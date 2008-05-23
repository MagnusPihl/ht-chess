#ifndef MOVESELECTOR_H
#define MOVESELECTOR_H

#include <vector>
#include "Move.h"
#include "Piece.h"
#include "Evaluator.h"
#include "GameConfiguration.h"

#if USE_MINIMAX_ONLY == 1
	class MiniMax
	{
	private:
		MoveGenerator moveGen;
		LayeredStack<Move, 1> moves;
		Evaluator evaluator;
	#if USE_TIME_CONSTRAINT == 1	
		int timeStarted;
	#endif

		int miniMax(Board &board, Move &path, bool isMaximizer=true, int curDepth=0, int maxDepth=100)
		{
			int boardState;
					
			/*#if USE_TIME_CONSTRAINT == 1
				if (SDL_GetTicks() - timeStarted > MAX_SEARCH_TIME) {
					printf("timeeee\n");
				}
			#endif		  */
			
			if (		
				/*#if USE_TIME_CONSTRAINT == 1
					(SDL_GetTicks() - timeStarted > MAX_SEARCH_TIME) || 
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
				
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1									
					test().movesGenerated += moves.size();					
				#endif
				
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
								
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1									
					test().movesGenerated += moves.size();					
				#endif
				
				return bestMove;
			}
		}
	public:
		Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY)
		{
			Move path;
			
			#if TEST_PERFORMANCE == 1
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1			       
					test().movesGenerated = 0; 				
				#endif
			
				#if PRINT_SEARCH_TIME == 1
					test().time = SDL_GetTicks();		
				#endif
				
				#if PRINT_NUMBER_OF_EVALUATIONS == 1
					test().evaluations = 0; 				
				#endif				
								
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
					test().movesGenerated = 0;					
				#endif
				
				#if PRINT_NUMBER_OF_CUTOFFS == 1
					test().cutoffs = 0;
				#endif
					
				#if USE_EVALUATION_CACHING == 1
				
					#if PRINT_CACHE_RETRIEVALS == 1						
						test().cacheRetrievals = 0;
					#endif
					
					#if PRINT_CACHE_RETRIEVALS == 1
						test().cacheRetrievals = 0;
					#endif
					
				#endif
			#endif
			
			/*#if USE_TIME_CONSTRAINT == 1				
				timeStarted = SDL_GetTicks();
			#endif*/
			
			miniMax(board, path, isMaximizer, 0, maxDepth);

			#if TEST_PERFORMANCE == 1
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1			       
					test().out << "movesGenerated = [movesGenerated, " << test().movesGenerated << "];" << std::endl; 				
				#endif
				
				#if PRINT_SEARCH_TIME == 1
					test().out << "searchTime = [searchTime, " << SDL_GetTicks() - test().time << "];"  << std::endl; 
				#endif
										
				#if PRINT_NUMBER_OF_EVALUATIONS == 1
					test().out << "evaluations = [evaluations, " << test().evaluations << "];" << std::endl; 				
				#endif
				
				#if USE_EVALUATION_CACHING == 1
					#if PRINT_CACHE_SIZE == 1
						test().out << "cacheSize = [cacheSize, " << evaluator.cache.getSize() << "];"  << std::endl; 
					#endif					
					
					#if PRINT_CACHE_RETRIEVALS == 1						
						test().out << "cacheRetrievals = [cacheRetrievals, " << test().cacheRetrievals << "];" << std::endl; 										
					#endif
									
					#if PRINT_NUMBER_OF_CUTOFFS == 1
						test().out << "cutoffs = [cutoffs, " << test().cutoffs << "];"  << std::endl; 
					#endif
				#endif	
			#endif
					
			#if CLEAR_CACHE_ON_NON_REVERSABLE_MOVE == 1
				if (path.getContent() != NO_PIECE) {
					evaluator.clearCache();
				}
			#endif

			return path;
		}
	};

	/*class AlphaBeta
	{
	private:
		MoveGenerator moveGen;
		Evaluator evaluator;

		int alphaBeta(Board &board, Move &path, bool isMaximizer=true, int curDepth=0,
			int maxDepth=100, int alpha=-100000, int beta=100000)
		{
			if(curDepth == maxDepth || board.isCheckmate() || board.isStalemate())		//if leaf
			{
				return evaluator(board, curDepth);
			}
			else if(isMaximizer)	//if maximizer
			{
				std::vector<Move> moveList;
				moveGen.generateMoves(board, WHITE, moveList, moveList);
				for(std::vector<Move>::iterator itr = moveList.begin(); itr != moveList.end() && alpha < beta; itr++)
				{
					(*itr).execute(board);
					int V = alphaBeta(board, path, false, curDepth+1, maxDepth, alpha, beta);
					if(V > alpha)
					{
						alpha = V;
						if(curDepth==0)	path = (*itr);
					}
					(*itr).unexecute(board);
				}
				
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1									
					test().movesGenerated += moves.size();					
				#endif
				
				return alpha;
			}
			else	//if minimizer
			{
				std::vector<Move> moveList;
				moveGen.generateMoves(board, BLACK, moveList, moveList);
				for(std::vector<Move>::iterator itr = moveList.begin(); itr != moveList.end() && alpha < beta; itr++)
				{
					(*itr).execute(board);
					int V = alphaBeta(board, path, true, curDepth+1, maxDepth, alpha, beta);
					if(V < beta)
					{
						beta = V;
						if(curDepth==0)	path = (*itr);
					}
					(*itr).unexecute(board);
				}				
				
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1									
					test().movesGenerated += moves.size();					
				#endif
				
				return beta;
			}
		}
	public:
		Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY)
		{
			Move path;
			alphaBeta(board, path, isMaximizer, 0, maxDepth);
			return path;
		}
	};*/

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
					(SDL_GetTicks() - timeStarted > MAX_SEARCH_TIME) || 
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
				
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1				
					#if USE_ITERATIVE_DEEPENING == 1
						test().movesGenerated[test().iteration-1] += moveList.size();			
					#else
						test().movesGenerated += moveList.size();
					#endif
				#endif
				
				#if PRINT_NUMBER_OF_CUTOFFS == 1 && TEST_PERFORMANCE == 1
					#if USE_ITERATIVE_DEEPENING == 1
						test().cutoffs[test().iteration-1] +=  moveList.size() - cutoffs; 
					#else
						test().cutoffs +=  moveList.size() - cutoffs; 
					#endif
				#endif
				
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
				
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1				
					#if USE_ITERATIVE_DEEPENING == 1
						test().movesGenerated[test().iteration-1] += moveList.size();			
					#else
						test().movesGenerated += moveList.size();
					#endif
				#endif
				
				#if PRINT_NUMBER_OF_CUTOFFS == 1 && TEST_PERFORMANCE == 1
					#if USE_ITERATIVE_DEEPENING == 1
						test().cutoffs[test().iteration-1] +=  moveList.size() - cutoffs; 
					#else
						test().cutoffs +=  moveList.size() - cutoffs; 
					#endif
				#endif
				
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
				
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1				
					#if USE_ITERATIVE_DEEPENING == 1
						test().movesGenerated[test().iteration-1] += moveList.size();			
					#else
						test().movesGenerated += moveList.size();
					#endif
				#endif
				
				#if PRINT_NUMBER_OF_CUTOFFS == 1 && TEST_PERFORMANCE == 1
					#if USE_ITERATIVE_DEEPENING == 1
						test().cutoffs[test().iteration-1] +=  moveList.size() - cutoffs; 
					#else
						test().cutoffs +=  moveList.size() - cutoffs; 
					#endif
				#endif
				
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
				
				#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1				
					#if USE_ITERATIVE_DEEPENING == 1
						test().movesGenerated[test().iteration-1] += moveList.size();			
					#else
						test().movesGenerated += moveList.size();
					#endif
				#endif
				
				#if PRINT_NUMBER_OF_CUTOFFS == 1 && TEST_PERFORMANCE == 1
					#if USE_ITERATIVE_DEEPENING == 1
						test().cutoffs[test().iteration-1] +=  moveList.size() - cutoffs; 
					#else
						test().cutoffs +=  moveList.size() - cutoffs; 
					#endif
				#endif			
				
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

		Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY)
		{
			Move path;
			moveList.clear();
			
			#if USE_TIME_CONSTRAINT == 1
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
					#if TEST_PERFORMANCE == 1
						#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
							test().movesGenerated[i-2] = 0;										
						#endif											

						#if PRINT_NUMBER_OF_EVALUATIONS == 1
							test().evaluations[i-2] = 0;
						#endif
					
						#if USE_EVALUATION_CACHING == 1 && PRINT_CACHE_RETRIEVALS == 1
							test().cacheRetrievals[i-2] = 0;
						#endif
						
						#if PRINT_NUMBER_OF_CUTOFFS == 1
							test().cutoffs[i-2] = 0;
						#endif
		    					
						test().iteration = (i-1);	
					#endif
					
					/*#if USE_TIME_CONSTRAINT == 1
						if (SDL_GetTicks() - timeStarted > MAX_SEARCH_TIME) {
							printf("time %i\n", i);
							break;
						}
					#endif*/
					
					alphaBeta(board, path, isMaximizer, i);

					#if USE_UNSORTED_STACK == 0
						moveList.sort();
					#endif
											
					#if PRINT_SEARCH_TIME == 1 && TEST_PERFORMANCE == 1
						test().time[i-2] = (SDL_GetTicks() - test().time[i-2]);		
						if (i != maxDepth) {
							test().time[i-1] = SDL_GetTicks();
						}
					#endif
					
					#if USE_EVALUATION_CACHING == 1 && PRINT_CACHE_SIZE == 1 && TEST_PERFORMANCE == 1
						test().cacheSize[i-2] = evaluator.cache.getSize(); 				
					#endif	
				} 
				
				#if TEST_PERFORMANCE == 1				
					#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
						test().out << "movesGenerated = [movesGenerated, [";
						
						for(int i = 0; i < (maxDepth-2); ++i) {
							test().out << test().movesGenerated[i] << "; "; 
						}
						test().out << test().movesGenerated[maxDepth-2] << "]];" << std::endl; 				
					#endif											

					#if PRINT_SEARCH_TIME == 1
						test().out << "searchTime = [searchTime, [";
						
						for(int i = 0; i < (maxDepth-2); ++i) {
							test().out << test().time[i] << "; "; 
						}
						test().out << test().time[maxDepth-2] << "]];" << std::endl; 				
					#endif
					
					#if PRINT_NUMBER_OF_EVALUATIONS == 1
						test().out << "evaluations = [evaluations, [";
											
						for(int i = 0; i < (maxDepth-2); ++i) {
							test().out << test().evaluations[i] << "; "; 
						}
						
						test().out << test().evaluations[maxDepth-2] << "]];" << std::endl;					 
					#endif	
					
					#if USE_EVALUATION_CACHING == 1 && PRINT_CACHE_RETRIEVALS == 1
						test().out << "cacheRetrievals = [cacheRetrievals, [";
						
						for(int i = 0; i < (maxDepth-2); ++i) {
							test().out << test().cacheRetrievals[i] << "; "; 
						}
						test().out << test().cacheRetrievals[maxDepth-2] << "]];" << std::endl; 				
					#endif						
					
					#if USE_EVALUATION_CACHING == 1 && PRINT_CACHE_SIZE == 1
						test().out << "cacheSize = [cacheSize, [";
						
						for(int i = 0; i < (maxDepth-2); ++i) {
							test().out << test().cacheSize[i] << "; "; 
						}
						test().out << test().cacheSize[maxDepth-2] << "]];" << std::endl; 				
					#endif
										
					#if USE_EVALUATION_CACHING == 1 && PRINT_CACHE_CLEARS == 1
						test().out << "cacheClears = [cacheClears, [";
						
						for(int i = 0; i < (maxDepth-2); ++i) {
							test().out << test().cacheClears[i] << "; "; 
						}
						test().out << test().cacheClears[maxDepth-2] << "]];" << std::endl; 				
					#endif
					
					#if PRINT_NUMBER_OF_CUTOFFS == 1
						test().out << "cutoffs = [cutoffs, [";
						
						for(int i = 0; i < (maxDepth-2); ++i) {
							test().out << test().cutoffs[i] << "; "; 
						}
						test().out << test().cutoffs[maxDepth-2] << "]];" << std::endl; 				
					#endif										
				#endif
			#else
			
				#if TEST_PERFORMANCE == 1
					#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
						test().movesGenerated = 0;										
					#endif											

					#if PRINT_NUMBER_OF_EVALUATIONS == 1
						test().evaluations = 0;
					#endif
					
					#if USE_EVALUATION_CACHING == 1
						#if PRINT_CACHE_RETRIEVALS == 1
							test().cacheRetrievals = 0;
						#endif
												
						#if PRINT_CACHE_CLEARS == 1			
							test().cacheClears = 0;
						#endif
					#endif
					
					#if PRINT_NUMBER_OF_CUTOFFS == 1
						test().cutoffs = 0; 
					#endif		    							
				#endif

				alphaBeta(board, path, isMaximizer, maxDepth);	
				
				#if TEST_PERFORMANCE == 1
					#if PRINT_NUMBER_OF_MOVES_GENERATED == 1			       
						test().out << "movesGenerated = [movesGenerated, " << test().movesGenerated << "];" << std::endl; 				
					#endif
					
					#if PRINT_SEARCH_TIME == 1
						test().out << "searchTime = [searchTime, " << (SDL_GetTicks() - test().time) << "];" << std::endl; 				
					#endif
					
					#if PRINT_NUMBER_OF_EVALUATIONS == 1
						test().out << "evaluations = [evaluations, " << test().evaluations << "];" << std::endl; 				
					#endif
					
					#if PRINT_NUMBER_OF_CUTOFFS == 1
						test().out << "cutoffs = [cutoffs, " << test().cutoffs << "];"  << std::endl; 
					#endif	
					
					#if USE_EVALUATION_CACHING == 1
						#if PRINT_CACHE_RETRIEVALS == 1						
							test().out << "cacheRetrievals = [cacheRetrievals, " << test().cacheRetrievals << "];" << std::endl; 										
						#endif	
						
						#if PRINT_CACHE_SIZE == 1
							test().out << "cacheSize = [cacheSize, " << evaluator.cache.getSize() << "];"  << std::endl; 
						#endif
											
						#if PRINT_CACHE_CLEARS == 1
							test().out << "cacheClears = [cacheClears, " << test().cacheClears << "];" << std::endl; 				
						#endif
					#endif
				#endif				
			#endif		
										
			#if CLEAR_CACHE_ON_NON_REVERSABLE_MOVE == 1
				if (path.getContent() != NO_PIECE) {
					evaluator.clearCache();
				}
			#endif
				
			return path;
		}
	};

	class StaticMoveSelector
	{
	private:
		std::vector<Move> moveList;
		int listPos;
		
	public:
		StaticMoveSelector()
		{
			listPos = 0;
			//Insert some moves
		}

		void setMoveList(std::vector<Move> moves)
		{
			moveList = moves;
			listPos = 0;
		}

		Move operator()()
		{
			return moveList[listPos++];
		}
	};
#endif

#endif

