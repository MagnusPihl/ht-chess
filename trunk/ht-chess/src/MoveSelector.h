#ifndef MOVESELECTOR_H
#define MOVESELECTOR_H

#define DEFAULT_PLY 3

#include <vector>
#include "Move.h"
#include "Piece.h"

class MiniMax
{
private:
	MoveGenerator moveGen;

	int miniMax(Board &board, Move &path, bool isMaximizer=true, int curDepth=0, int maxDepth=100)
	{
		if(curDepth == maxDepth /* && board.gameEnded() ??? */)		//if leaf
		{
			return 0;//BoardEvaluator.boardValue(board);
		}
		else if(isMaximizer)	//if maximizer
		{
			int bestMove = -10000;
			int curMove;
			std::vector<Move> moveList;
			moveGen.generateMoves(board, WHITE, moveList);
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
			moveGen.generateMoves(board, BLACK, moveList);
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
public:
	Move operator()(Board board, int alpha=-10000, int beta=10000,
		bool isMaximizer=true, int curDepth=0, int maxDepth=100)
	{
	}
};

#endif