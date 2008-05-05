#ifndef MOVESELECTOR_H
#define MOVESELECTOR_H

#define DEFAULT_PLY 4

#include <vector>
#include "Move.h"
#include "Piece.h"
#include "Evaluator.h"

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

	int alphaBeta(Board &board, Move &path, bool isMaximizer=true, int curDepth=0,
		int maxDepth=100, int alpha=-100000, int beta=100000)
	{
		//printf("før\n");
		if(curDepth == maxDepth || board.isCheckmate() || board.isStalemate())		//if leaf
		{
			//printf("efter\n");
			return evaluator(board, curDepth);
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
					if(curDepth==0)
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
			
			LayeredStack<Move, STACK_SIZE>::iterator itr;									
			
			for(itr = moveList.begin(); (itr != moveList.end()) && (alpha < beta); ++itr)
			{
				moveList.setReturnPoint();
				
				(*itr).execute(board);
				int V = alphaBeta(board, path, true, curDepth+1, maxDepth, alpha, beta);
				if(V < beta)
				{
					beta = V;
					if(curDepth==0)
						path = (*itr);
				}
				(*itr).unexecute(board);
				
				moveList.rollBack();
			}
			
			return beta;
		}
	}
public:
	AlphaBetaOptimized()
	{
		/*moveList.resize(100*DEFAULT_PLY);
		killerMoveList.resize(50*DEFAULT_PLY);*/
	}

	Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY)
	{
		Move path;
		moveList.clear();
		alphaBeta(board, path, isMaximizer, 0, maxDepth);
		return path;
	}
};

#endif

