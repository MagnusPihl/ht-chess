#ifndef MOVESELECTOR_H
#define MOVESELECTOR_H

#define DEFAULT_PLY 5
#define MAX_SEARCH_TIME 30000	//max milliseconds per turn

#include <vector>
#include "Move.h"
#include "Piece.h"
#include "Evaluator.h"

//static int MINMAX_COLOR[2] = {BLACK, WHITE};
//#include <fstream>

/*class MiniMax
{
private:
	MoveGenerator moveGen;

	int miniMax(Board &board, Move &path, bool isMaximizer=true, int curDepth=0, int maxDepth=100)
	{
		if(curDepth == maxDepth || board.isCheckmate() || board.isStalemate())		//if leaf
		{
			return 0;//BoardEvaluator.boardValue(board);
		}
		else if(isMaximizer)	//if maximizer
		{
			int bestMove = -10000;
			int curMove;
			std::vector<Move> moveList;
			moveGen.generateMoves(board, WHITE, moveList, moveList);
			for(std::vector<Move>::iterator itr = moveList.begin(); itr != moveList.end(); itr++)
			{			
				(*itr).execute(board);
				curMove = miniMax(board, path, false, curDepth+1, maxDepth);
				if(curMove > bestMove)
				{
					bestMove = curMove;
					path = (*itr);
				}
				(*itr).unexecute(board);
			}
			return bestMove;
		}
		else	//if minimizer
		{
			int bestMove = 10000;
			int curMove;
			std::vector<Move> moveList;
			moveGen.generateMoves(board, BLACK, moveList, moveList);
			for(std::vector<Move>::iterator itr = moveList.begin(); itr != moveList.end(); itr++)
			{
				(*itr).execute(board);
				curMove = miniMax(board, path, true, curDepth+1, maxDepth);
				if(curMove < bestMove)
				{
					bestMove = curMove;
					path = (*itr);
				}
				(*itr).unexecute(board);
			}
			return bestMove;
		}
	}
public:
	Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY)
	{
		Move path;
		miniMax(board, path, isMaximizer, 0, maxDepth);
		return path;
	}
};

class AlphaBeta
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

class AlphaBetaOptimized
{
private:
	MoveGenerator moveGen;
	Evaluator evaluator;
	LayeredStack<Move, STACK_SIZE> moveList;
	Move nextMove[2];	//0 == WHITE, 1 == BLACK
	int timeStarted;

	int alphaBeta(Board &board, Move &path, bool isMaximizer, int curDepth, int maxDepth, int alpha, int beta)
	{
		if (SDL_GetTicks() - timeStarted > MAX_SEARCH_TIME) {
			printf("time\n");
		}
		int boardState;
		
		if((SDL_GetTicks() - timeStarted > MAX_SEARCH_TIME) || 
			(curDepth == maxDepth) || 
			((boardState = board.isCheckmate()) & (IS_CHECKMATE | IS_STALEMATE) != 0))		//if leaf
		{			
			return evaluator(board, curDepth, boardState);
		}
		else if(isMaximizer)	//if maximizer
		{
			moveGen.generateMoves(board, WHITE, moveList);	
			LayeredStack<Move, STACK_SIZE>::iterator itr;	
			for(itr = moveList.begin(); (itr != moveList.end()) && (alpha < beta); ++itr)
			{	
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
		if(isMaximizer)	//if maximizer
		{
			moveGen.generateMoves(board, WHITE, moveList);	
				
			for(LayeredStack<Move, STACK_SIZE>::iterator itr = moveList.begin(); (itr != moveList.end()) && (alpha < beta); ++itr)
			{	
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

	Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY)
	{
		Move path;
		moveList.clear();
		timeStarted = SDL_GetTicks();
		
		if (isMaximizer) {
			moveGen.generateMoves(board, WHITE , moveList);
		} else {
			moveGen.generateMoves(board, BLACK , moveList);
		}		
		
        for(int i = 2; i <= maxDepth; ++i)       
        {
			if (SDL_GetTicks() - timeStarted > MAX_SEARCH_TIME) {
				printf("time %i\n", i);
				break;
			}
            alphaBeta(board, path, isMaximizer, i);
            moveList.sort();
        }        
		/*if(path.getContent() != NO_PIECE)
			evaluator.clearCache();*/
		/*printf("k efter:	%i\n", killerMoveList.size());
		printf("m efter:	%i\n", moveList.size());*/
		/*moveFile << "moveList.push_back(Move(" << path.getOldPosition() << ", " << path.getNewPosition() << ", " << path.getSpecial();
		moveFile << ", " << path.getPiece() << ", " << path.getContent() << ", " << path.getHasMoved() << ", " << path.getEnPassantPosition();
		moveFile << ", " << path.getReversableMoves() << "));\n";*/
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

