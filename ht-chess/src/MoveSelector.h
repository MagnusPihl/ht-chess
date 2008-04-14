#ifndef MOVESELECTOR_H
#define MOVESELECTOR_H

#include <vector>
#include <stdlib>
#include "Move.h"

class MiniMax
{
private:
	int miniMax(Board board, Move *path, bool isMaximizer=true, int curDepth=0, int maxDepth=100)
	{
		if(curDepth == maxDepth /* && board.gameEnded() ??? */)		//if leaf
		{
			return BoardEvaluator.boardValue(board);
		}
		else if(isMaximizer)	//if maximizer
		{
			int bestMove = -10000;
			std::vector<Move> moveList = MoveGenerator.generateMoves(board);
			for(std::vector<Move>::iterator itr = moveList.begin(); itr != moveList.end(); itr++)
			{
				(*itr).execute(&board);
				curMove = miniMax(board, path, false, curDepth+1, maxDepth);
				if(curMove > bestMove)
				{
					bestMove = curMove
					path = move;
				}
				(*itr).unexecute(&board);
			}
		}
		else	//if minimizer
		{
			int bestMove = 10000;
			int curMove;
			std::vector<Move> moveList = MoveGenerator.generateMoves(board);
			for(std::vector<Move>::iterator itr = moveList.begin(); itr != moveList.end(); itr++)
			{
				(*itr).execute(&board);
				curMove = miniMax(board, path, true, curDepth+1, maxDepth);
				if(curMove < bestMove)
				{
					bestMove = curMove
					path = move;
				}
				(*itr).unexecute(&board);
			}
		}
	}
public:
	Move operator()(Board board, bool isMaximizer=true, int curDepth=0, int maxDepth=100) const
	{
		Move path;
		miniMax(board, &path, isMaximize, curDepth, maxDepth);
		return path;
	}
};

class AlphaBeta
{
public:
	Move operator()(Board board, int alpha=-10000, int beta=10000,
		bool isMaximizer=true, int curDepth=0, int maxDepth=100) const
	{
	}
};

#endif