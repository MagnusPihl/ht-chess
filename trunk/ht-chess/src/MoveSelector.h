#ifndef MOVESELECTOR_H
#define MOVESELECTOR_H

#define DEFAULT_PLY 3

#include <vector>
#include "Move.h"
#include "Piece.h"
#include "Validator.h"

class MiniMax
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
private:
	MoveGenerator moveGen;
	Validator validator;

	int alphaBeta(Board &board, Move &path, bool isMaximizer=true, int curDepth=0,
		int maxDepth=100, int alpha=-100000, int beta=100000)
	{
		if(curDepth == maxDepth || board.isCheckmate() || board.isStalemate())		//if leaf
		{
			return validator(board, curDepth);
		}
		else if(isMaximizer)	//if maximizer
		{
			std::vector<Move> moveList;
			moveGen.generateMoves(board, WHITE, moveList);
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
			moveGen.generateMoves(board, BLACK, moveList);
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
};

class AlphaBetaOptimized
{
private:
	MoveGenerator moveGen;
	Validator validator;
	std::vector<Move> moveList;

	int alphaBeta(Board &board, Move &path, bool isMaximizer=true, int curDepth=0,
		int maxDepth=100, int alpha=-100000, int beta=100000, int offset=0)
	{
		if(curDepth == maxDepth || board.isCheckmate() || board.isStalemate())		//if leaf
		{
			return validator(board, curDepth);
		}
		else if(isMaximizer)	//if maximizer
		{
			moveGen.generateMoves(board, WHITE, moveList);
			int numMoves = moveList.size() - offset;
			for(int i=offset; i < offset+numMoves && alpha < beta; i++)
			{
				moveList[i].execute(board);
				int V = alphaBeta(board, path, false, curDepth+1, maxDepth, alpha, beta, offset+numMoves);
				if(V > alpha)
				{
					alpha = V;
					if(curDepth==0)
						path = moveList[i];
				}
				moveList[i].unexecute(board);
				moveList.erase(moveList.begin()+offset+numMoves, moveList.end());
			}
			return alpha;
		}
		else	//if minimizer
		{
			moveGen.generateMoves(board, BLACK, moveList);
			int numMoves = moveList.size() - offset;
			for(int i=offset; i < offset+numMoves && alpha < beta; i++)
			{
				moveList[i].execute(board);
				int V = alphaBeta(board, path, true, curDepth+1, maxDepth, alpha, beta, offset+numMoves);
				if(V < beta)
				{
					beta = V;
					if(curDepth==0)
						path = moveList[i];
				}
				moveList[i].unexecute(board);
				moveList.erase(moveList.begin()+offset+numMoves, moveList.end());
			}
			return beta;
		}
	}
public:
	Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY)
	{
		Move path;
		moveList.clear();
		alphaBeta(board, path, isMaximizer, 0, maxDepth);
		return path;
	}
};

#endif

