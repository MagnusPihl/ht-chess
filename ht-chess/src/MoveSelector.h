#ifndef MOVESELECTOR_H
#define MOVESELECTOR_H

public class MiniMax
{
private:
	int miniMax(Board board, Move *path, bool isMaximizer=true, int curDepth=0, int maxDepth=100)
	{
		if(curDepth == maxDepth /* AND OTHER SHITZ! */)		//if leaf
		{
			return BoardEvaluator.boardValue(board);
		}
		else if(isMaximizer)	//if maximizer
		{
			int bestMove = -10000;
			/*moveList = */MoveGenerator.generateMoves(board);
			//foreach Move move in moveList
			{
				//Execute move
				curMove = miniMax(board, path, false, curDepth+1, maxDepth);
				if(curMove > bestMove)
				{
					bestMove = curMove
					path = move;
				}
				//Unexecute move
			}
		}
		else	//if minimizer
		{
			int bestMove = 10000;
			int curMove;
			/*moveList = */MoveGenerator.generateMoves(board);
			//foreach Move move in moveList
			{
				//Execute move
				curMove = miniMax(board, path, true, curDepth+1, maxDepth);
				if(curMove < bestMove)
				{
					bestMove = curMove
					path = move;
				}
				//Unexecute move
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