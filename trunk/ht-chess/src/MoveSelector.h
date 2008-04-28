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
	std::vector<Move> killerMoveList;
	std::vector<Move> moveList;

	int alphaBeta(Board &board, Move &path, bool isMaximizer=true, int curDepth=0,
		int maxDepth=100, int alpha=-100000, int beta=100000, int offset=0, int killerOffset=0)
	{
		//printf("før\n");
		if(curDepth == maxDepth || board.isCheckmate() || board.isStalemate())		//if leaf
		{
			//printf("efter\n");
			return evaluator(board, curDepth);
		}
		else if(isMaximizer)	//if maximizer
		{
			moveGen.generateMoves(board, WHITE, killerMoveList, moveList);
			//moveGen.generateMoves(board, WHITE, moveList, moveList);
						
			//printf("%i\n", killerMoveList.size());
			//int killerEndOffset = killerMoveList.size();						
			int endOffset = moveList.size();			
			//killer			
			
			for(int i=0; i < endOffset && alpha < beta; i++)
			{
				killerMoveList.push_back(moveList[i]);
			}
			moveList.clear();
			
			int killerEndOffset = killerMoveList.size();	
			
			if (killerOffset != killerEndOffset) {
				for(int i=killerOffset; i < killerEndOffset && alpha < beta; i++)
				{
					killerMoveList[i].execute(board);
					int V = alphaBeta(board, path, false, curDepth+1, maxDepth, alpha, beta, endOffset, killerEndOffset);
					if(V > alpha)
					{
						alpha = V;
						if(curDepth==0)
							path = killerMoveList[i];
					}
					killerMoveList[i].unexecute(board);
					//printf("%i - %i\n", killerEndOffset, killerMoveList.size());
					killerMoveList.erase(killerMoveList.begin()+killerEndOffset, killerMoveList.end());
				}
			}								
			
			//normal
			/*for(int i=offset; i	< endOffset && alpha < beta; i++)
			{
				moveList[i].execute(board);
				int V = alphaBeta(board, path, false, curDepth+1, maxDepth, alpha, beta, endOffset, killerEndOffset);
				if(V > alpha)
				{
					alpha = V;
					if(curDepth==0)
						path = moveList[i];
				}
				moveList[i].unexecute(board);
				moveList.erase(moveList.begin()+endOffset, moveList.end());
			}	*/		
			return alpha;
		}
		else	//if minimizer
		{
			moveGen.generateMoves(board, BLACK, killerMoveList, moveList);
			//moveGen.generateMoves(board, BLACK, moveList, moveList);
											
			int endOffset = moveList.size();	
			
			for(int i=0; i < endOffset && alpha < beta; i++)
			{
				killerMoveList.push_back(moveList[i]);
			}
			moveList.clear();
			
			int killerEndOffset = killerMoveList.size();												
			
			//printf("min før		%i\n", killerMoveList.size());
			//killer						
			for(int i=killerOffset; i < killerEndOffset && alpha < beta; i++)
			{
				killerMoveList[i].execute(board);
				int V = alphaBeta(board, path, true, curDepth+1, maxDepth, alpha, beta, endOffset, killerEndOffset);
				if(V < beta)
				{
					beta = V;
					if(curDepth==0)
						path = killerMoveList[i];
				}
				killerMoveList[i].unexecute(board);
				killerMoveList.erase(killerMoveList.begin()+killerEndOffset, killerMoveList.end());
			}											
			
			//normal
			/*for(int i=offset; i < endOffset && alpha < beta; i++)
			{
				moveList[i].execute(board);
				int V = alphaBeta(board, path, true, curDepth+1, maxDepth, alpha, beta, endOffset, killerEndOffset);
				if(V < beta)
				{
					beta = V;
					if(curDepth==0)
						path = moveList[i];
				}
				moveList[i].unexecute(board);
				moveList.erase(moveList.begin()+endOffset, moveList.end());
			}*/
			//printf("efter\n");
			return beta;
		}
	}
public:
	AlphaBetaOptimized()
	{
		moveList.resize(100*DEFAULT_PLY);
		killerMoveList.resize(50*DEFAULT_PLY);
	}

	Move operator()(Board &board, bool isMaximizer=true, int maxDepth=DEFAULT_PLY)
	{
		Move path;
		killerMoveList.clear();
		moveList.clear();
		/*printf("k før:		%i\n", killerMoveList.size());
		printf("m før:		%i\n", moveList.size());*/
		alphaBeta(board, path, isMaximizer, 0, maxDepth);
		/*printf("k efter:	%i\n", killerMoveList.size());
		printf("m efter:	%i\n", moveList.size());*/
		return path;
	}
};

#endif

