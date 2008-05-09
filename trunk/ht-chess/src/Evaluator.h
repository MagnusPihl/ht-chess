#ifndef EVALUATOR_H
#define EVALUATOR_H

#include "LayeredStack.h"
#include "ValueCache.h"
#include "Move.h"
#include "Board.h"

#define PHASE_1 0x01
#define PHASE_2 0x02
#define END_GAME 0x04

#define EVALUATOR_CACHE

int GLOBAL_pawRow[8] = {0, 0, -1, 0, 2, 14, 30, 0};
int GLOBAL_pawColumn[8] = {-2, 0, 3, 4, 5, 1, -2, -2};
int GLOBAL_distance[128] = 
			{3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0,
			 3, 2, 2, 2, 2, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
			 3, 2, 1, 1, 1, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
			 3, 2, 1, 0, 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
			 3, 2, 1, 0, 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
			 3, 2, 1, 1, 1, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
			 3, 2, 2, 2, 2, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
			 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0};

class Evaluator
{
private:
    bool cacheValue;
    LayeredStack<Move, STACK_SIZE> moves;

#ifdef EVALUATOR_CACHE
	ValueCache cache;
#endif

	int getValue(Board &board, Color color, int ply)
	{
		int value = 0;
		int threats = 0;
		int colorIndex = (color == WHITE); 
		int rowIndex = CASTLING_ROW[colorIndex];
		int direction = PAWN_DIRECTION[colorIndex];

		int gamePhase;
		if(board.getMaterialValue(color) <= 1500 || board.getMaterialValue(GET_OPPOSITE_COLOR(color)) <= 1500)
		{
			if(board.getMaterialValue(color) <= 600 || board.getMaterialValue(GET_OPPOSITE_COLOR(color)) <= 600)
				gamePhase = END_GAME;
			else
				gamePhase = PHASE_2;
		}
		else
			gamePhase = PHASE_1;
		//printf("gamePhase i v1 is %i\n", gamePhase);
		
		if(board.hasPerformedCastling(color))
				value += 16;
//		printf("Current value: %i\n", value);
		
		Position pos;
		for(int x = 0; x < 8; ++x)
		{
			for(int y = 0; y < 8; ++y)
			{
				pos = GET_POSITION(x, y);
				if(GET_PIECE_COLOR(board[pos]) == color)
				{
					if(gamePhase == PHASE_1 || gamePhase == PHASE_2)
					{                    
						switch (GET_PIECE_TYPE(board[pos]))
						{
							case PAWN:
								if(GET_PIECE_TYPE(board[GET_POSITION(x, y+1)]) == PAWN)
									value -= 8;				
								//rowIndex is used for the column part too because it equals a shifted column				
								value += GLOBAL_pawRow[rowIndex + direction * GET_ROW(pos)] 
									+ GLOBAL_pawColumn[rowIndex + direction * GET_REAL_COLUMN(pos)] * (rowIndex + direction*(GET_ROW(pos) >> 2));
								
								break;
	                            
							case KNIGHT:
								value += 3 * (4 - GLOBAL_distance[pos]);
								break;
	                            
							case BISHOP:
								board.getMovesFromPosition(pos, moves);
								value += (int)(2.5 * (moves.size()));
								moves.clear();
								break;
	                            
							case ROOK:
								board.getMovesFromPosition(pos, moves);
								value += (int)(1.5 * (moves.size()));
								moves.clear();                      
								break;
	                            
							case QUEEN:
								board.getMovesFromPosition(pos, moves);
								value += (moves.size());
								moves.clear();                        
								break;
	                            
							case KING:
								//antal træk fra MATE!
								if(board.isCheckmate(color))
								{
									value -= 1000 * ply;
									cacheValue = false;
								}
								if(gamePhase == PHASE_2)
								{
									value -= GLOBAL_distance[pos];
								}
								value += 10000;
								break;
						}
					}
					else	//gamePhase == END_GAME
					{
						switch (GET_PIECE_TYPE(board[pos]))
						{
							case PAWN:
								if(GET_PIECE_TYPE(board[GET_POSITION(x, y+1)]) == PAWN)
									value -= 8;
								//rowIndex is used for the column part too because it equals a shifted column				
								value += GLOBAL_pawRow[rowIndex + direction * GET_ROW(pos)] 
									+ GLOBAL_pawColumn[rowIndex + direction * GET_REAL_COLUMN(pos)] * (rowIndex + direction*(GET_ROW(pos) >> 2));
								
								break;
							case KING:
								//antal træk fra MATE!
								if(board.isCheckmate(color))
								{
									value -= 1000 * ply;
									cacheValue = false;
								}
								if(board.getMaterialValue(color) < board.getMaterialValue(GET_OPPOSITE_COLOR(color)))
									value -= 8 * GLOBAL_distance[pos];
								else 
									value -= 2 * getDistance(x, y, color, board);
								value += 10000;
								break;
						}
					}
				}
				if(GET_PIECE_TYPE(board[pos]) < PAWN)
					if(board.getThreatOf(pos, color) != NO_PIECE)
						threats++;
				
			}
		}
		///*if(color == WHITE)
		//	printf("v1 W: %i\n", value);
		//else
		//	printf("v1 B: %i\n", value);*/

		if(threats == 0)
			value += 2;
		else if(threats == 1)
			value -= 10;
		else
			value -= 50;

		value += board.getMaterialValue(color);

		return value;
	}
    
    int evaluate(Board &board, int ply)
	{
		int value;
	//printf("cols: %i\n", cache.getCollisions);
#ifdef EVALUATOR_CACHE				
		int hash = board.getHashKey();
		int lock = board.getHashLock();		
		value = cache.get(hash, lock);
		
		if(value != INVALID_BOARD_VALUE)//v.first == 0 || v.first != board.getHashLock())
		{	
			//printf("cached: %i\n", hash);
			return value;
		}
		else
		{
			//printf("Not cached. Hash: %i, Lock: %i, Cached Lock: %i.\n", board.getHashKey(), board.getHashLock(), v.first);
			cacheValue = true;
#endif
			value = getValue(board, WHITE, ply) - getValue(board, BLACK, ply);
			//int v2 = getValue2(board, ply);
			//if(value != v2)
			//	printf("%i does not equal %i, difference is %i\n", value, v2, value - v2);
		    
#ifdef EVALUATOR_CACHE			
			if (cacheValue)
				cache.insert(hash, lock, value);
#endif
			return value;
#ifdef EVALUATOR_CACHE
		}
#endif
	}


	int getDistance(int x, int y, int currentColor, Board &board)
	{
		int opKing = board.getPositionOfKing(GET_OPPOSITE_COLOR(currentColor));
		if(abs(x-GET_ROW(opKing)) > abs(y-GET_REAL_COLUMN(opKing)))
			return abs(x-GET_ROW(opKing));
		else
			return abs(y-GET_REAL_COLUMN(opKing));
	}

public:
	Evaluator() {}

    int operator()(Board &board, int depth)
	{
        return evaluate(board, depth);
    }

	void clearCache()
	{
#ifdef EVALUATOR_CACHE
		cache.clear();
		//printf("Cache elements: %i\n", cache.size());
#endif
	}
};


#endif