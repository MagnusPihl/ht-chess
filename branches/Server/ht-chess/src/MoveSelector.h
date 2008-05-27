#ifndef MOVESELECTOR_H
#define MOVESELECTOR_H

#include <vector>
#include "GameConfiguration.h"
#include "Move.h"
#include "Piece.h"
#include "Evaluator.h"

#if USE_MINIMAX_ONLY == 1
	class MiniMax
	{
	private:
		MoveGenerator moveGen;
		LayeredStack<Move, 1> moves;
		Evaluator evaluator;
	#if USE_TIME_CONSTRAINT == 1	
		int timeStarted;
		int maxTime;
	#endif

		int miniMax(Board &board, Move &path, bool isMaximizer=true, int curDepth=0, int maxDepth=100)
		{
			int boardState;
					
			/*#if USE_TIME_CONSTRAINT == 1
				if (SDL_GetTicks() - timeStarted > maxTime) {
					printf("timeeee\n");
				}
			#endif		  */
			
			if (		
				/*#if USE_TIME_CONSTRAINT == 1
					(SDL_GetTicks() - timeStarted > maxTime) || 
				#endif	*/	  
				
				(curDepth == maxDepth) || 
				(((boardState = board.isCheckmate()) & (IS_STALEMATE | IS_CHECKMATE)) != 0))		//if leaf
			{				
				return evaluator(board, curDepth, boardState);
			}
			else if(isMaximizer)	//if maximizer
			{
				int bestMove = -10000;
				int curMove;
				moveGen.generateMoves(board, WHITE, moves);
							
				for(LayeredStack<Move,1>::iterator itr = moves.begin(); itr != moves.end(); ++itr)
				{			
					(*itr).execute(board);
					moves.setReturnPoint();
					curMove = miniMax(board, path, false, curDepth+1, maxDepth);
					if(curMove > bestMove)
					{
						bestMove = curMove;
						path = (*itr);
					}
					(*itr).unexecute(board);
					moves.rollBack();
				}
				
				return bestMove;
			}
			else	//if minimizer
			{
				int bestMove = 10000;
				int curMove;
				moveGen.generateMoves(board, BLACK, moves);
				
				for(LayeredStack<Move,1>::iterator itr = moves.begin(); itr != moves.end(); ++itr)
				{
					(*itr).execute(board);
					moves.setReturnPoint();
					curMove = miniMax(board, path, true, curDepth+1, maxDepth);
					if(curMove < bestMove)
					{
						bestMove = curMove;
						path = (*itr);
					}
					(*itr).unexecute(board);
					moves.rollBack();
				}
				
				return bestMove;
			}
		}
	public:
		Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY, int timeCutoff=MAX_SEARCH_TIME)
		{
			Move path;
			
			/*#if USE_TIME_CONSTRAINT == 1
				maxTime = timeCutoff;
				timeStarted = SDL_GetTicks();
			#endif*/
			
			miniMax(board, path, isMaximizer, 0, maxDepth);
					
			#if CLEAR_CACHE_ON_NON_REVERSABLE_MOVE == 1
				if (path.getContent() != NO_PIECE) {
					evaluator.clearCache();
				}
			#endif

			return path;
		}
	};

#else

	class AlphaBetaOptimized
	{
	private:
		MoveGenerator moveGen;
		Evaluator evaluator;
		LayeredStack<Move, STACK_SIZE> moveList;
		Move nextMove[2];	//0 == WHITE, 1 == BLACK
		#if USE_TIME_CONSTRAINT == 1
			int timeStarted;
			int maxTime;
		#endif

		int alphaBeta(Board &board, Move &path, bool isMaximizer, int curDepth, int maxDepth, int alpha, int beta)
		{
			#if PRINT_NUMBER_OF_CUTOFFS == 1 && USE_MINIMAX_ONLY == 0
				int cutoffs = 0;			
			#endif	
		
			/*#if USE_TIME_CONSTRAINT == 1
				if (SDL_GetTicks() - timeStarted > MAX_SEARCH_TIME) {
					printf("time\n");
				}
			#endif*/
			
			int boardState;
			
			if(
				#if USE_TIME_CONSTRAINT == 1
					(SDL_GetTicks() - timeStarted > maxTime) || 
				#endif		    		    
				(curDepth == maxDepth) || 
				(((boardState = board.isCheckmate()) & (IS_CHECKMATE | IS_STALEMATE)) != 0))		//if leaf
			{			
				return evaluator(board, curDepth, boardState);
			}
			else if(isMaximizer)	//if maximizer
			{
				moveGen.generateMoves(board, WHITE, moveList);	
				
				LayeredStack<Move, STACK_SIZE>::iterator itr;	
				for(itr = moveList.begin(); (itr != moveList.end()) && (alpha < beta); ++itr)
				{	
							
					#if PRINT_NUMBER_OF_CUTOFFS == 1 && USE_MINIMAX_ONLY == 0			
						cutoffs++;
					#endif
					
					moveList.setReturnPoint();
				
					(*itr).execute(board);				
					int V = alphaBeta(board, path, false, curDepth+1, maxDepth, alpha, beta);
					if(V > alpha)
					{
						alpha = V;
						if(curDepth==2)
							nextMove[0] = (*itr);
					}
					(*itr).unexecute(board);
					
					moveList.rollBack();
				}
				
				return alpha;
			}
			else	//if minimizer
			{
				moveGen.generateMoves(board, BLACK, moveList);		
				
				for(LayeredStack<Move, STACK_SIZE>::iterator itr = moveList.begin(); (itr != moveList.end()) && (alpha < beta); ++itr)
				{
				
					#if PRINT_NUMBER_OF_CUTOFFS == 1 && USE_MINIMAX_ONLY == 0			
						cutoffs++;
					#endif
					
					moveList.setReturnPoint();
					
					(*itr).execute(board);
					int V = alphaBeta(board, path, true, curDepth+1, maxDepth, alpha, beta);
					if(V < beta)
					{
						beta = V;
						if(curDepth==2)
							nextMove[1] = (*itr);
					}
					(*itr).unexecute(board);
					
					moveList.rollBack();
				}
				
				return beta;
			}
		}
	        
		int alphaBeta(Board &board, Move &path, bool isMaximizer=true, int maxDepth=100, int alpha=-100000, int beta=100000)
		{		
		
			#if PRINT_NUMBER_OF_CUTOFFS == 1 && USE_MINIMAX_ONLY == 0
				int cutoffs = 0;			
			#endif
		
			if(isMaximizer)	//if maximizer
			{
				moveGen.generateMoves(board, WHITE, moveList);	
									
				for(LayeredStack<Move, STACK_SIZE>::iterator itr = moveList.begin(); (itr != moveList.end()) && (alpha < beta); ++itr)
				{	
					#if PRINT_NUMBER_OF_CUTOFFS == 1 && USE_MINIMAX_ONLY == 0			
						cutoffs++;
					#endif
					
					moveList.setReturnPoint();
				
					(*itr).execute(board);				
					int V = alphaBeta(board, path, false, 1, maxDepth, alpha, beta);
					if(V > alpha)
					{
						alpha = V;
						moveList.setValue(itr, V);
						path = (*itr);
					}
					(*itr).unexecute(board);
					
					moveList.rollBack();
				}
				
				return alpha;
			}
			else	//if minimizer
			{
				moveGen.generateMoves(board, BLACK, moveList);	
											
				for(LayeredStack<Move, STACK_SIZE>::iterator itr = moveList.begin(); (itr != moveList.end()) && (alpha < beta); ++itr)
				{
					
					#if PRINT_NUMBER_OF_CUTOFFS == 1
						cutoffs++;
					#endif
					
					moveList.setReturnPoint();
					
					(*itr).execute(board);
					int V = alphaBeta(board, path, true, 1, maxDepth, alpha, beta);
					if(V < beta)
					{
						beta = V;
						moveList.setValue(itr, V);
						path = (*itr);
					}
					(*itr).unexecute(board);
					
					moveList.rollBack();
				}		
				
				return beta;
			}
		}
	public:
		//ofstream moveFile;

		AlphaBetaOptimized()
		{
			/*moveList.resize(100*DEFAULT_PLY);
			killerMoveList.resize(50*DEFAULT_PLY);*/
			//moveFile.open("moves.txt");
		}

		Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY, int timeCutoff=MAX_SEARCH_TIME)
		{
			Move path;
			moveList.clear();
			
			#if USE_TIME_CONSTRAINT == 1
				maxTime = MAX_SEARCH_TIME;
				timeStarted = SDL_GetTicks();
			#endif									
						
			#if PRINT_SEARCH_TIME == 1 && TEST_PERFORMANCE == 1
				#if USE_ITERATIVE_DEEPENING == 1
					test().time[0] = SDL_GetTicks();
				#else
					test().time = SDL_GetTicks();
				#endif
			#endif
			
			if (isMaximizer) {
				moveGen.generateMoves(board, WHITE , moveList);
			} else {
				moveGen.generateMoves(board, BLACK , moveList);
			}		

			#if USE_ITERATIVE_DEEPENING == 1		

				for(int i = 2; i <= maxDepth; ++i)   								    
				{					
					alphaBeta(board, path, isMaximizer, i);

					#if USE_UNSORTED_STACK == 0
						moveList.sort();
					#endif
				}
			#else
				alphaBeta(board, path, isMaximizer, maxDepth);	
			#endif		
										
			#if CLEAR_CACHE_ON_NON_REVERSABLE_MOVE == 1
				if (path.getContent() != NO_PIECE) {
					evaluator.clearCache();
				}
			#endif
				
			return path;
		}
	};
#endif

#endif

