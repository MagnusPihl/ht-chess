/*
 * File:   Validater.h
 * Author: zeor
 *
 * Created on April 21, 2008, 10:13 AM
 */
#ifndef EVALUATOR_H
#define EVALUATOR_H

#include "LayeredStack.h"
#include <hash_map>
#include "Move.h"

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

class Evaluator {
private:
    int materialValueBlack;
    int materialValueWhite;
    int valueBlack;
    int valueWhite;
    int tempValue;
    int threats;
    int threatsBlack;
    int threatsWhite;
    Color currentColor;
    int gamePhase;
    LayeredStack<Move, STACK_SIZE> moves;

	typedef std::pair<int, int> boardValue;
	stdext::hash_map<int, boardValue> cache;
    
    int evaluate(Board &board, int ply)
	{
#ifdef EVALUATOR_CACHE
		boardValue v = cache[board.getHashKey()];
		boardValue va;
		if(true)//v.first == 0 || v.first != board.getHashLock())
		{
			//printf("Not cached. Hash: %i, Lock: %i, Cached Lock: %i.\n", board.getHashKey(), board.getHashLock(), v.first);
#endif
			Position pos;
			materialValueBlack = board.getMaterialValue(BLACK);
			materialValueWhite = board.getMaterialValue(WHITE);
	        
			valueBlack = 0;
			valueWhite = 0;
			threatsBlack = 0;
			threatsWhite = 0;
			currentColor = WHITE;
	        
	        
			if(materialValueBlack < 1500 || materialValueWhite < 1500){
				if(materialValueBlack < 600 || materialValueWhite < 600){
				   gamePhase = END_GAME;
				}
				gamePhase = PHASE_2;
			}
			else{
				gamePhase = PHASE_1;
			}
	            
			if(board.hasPerformedCastling(BLACK))
				valueBlack = 16;
			if(board.hasPerformedCastling(WHITE))
				valueBlack = 16;
	        
			for(int i = 0; i < 8; ++i)
			{
				for(int j = 0; j < 8; ++j)
				{
					tempValue = 0;
					pos = GET_POSITION(i, j);
					currentColor = GET_PIECE_COLOR(board[pos]);
					if(gamePhase == PHASE_1 || gamePhase == PHASE_2)
					{                    
						switch (GET_PIECE_TYPE(board[pos]))
						{
							case PAWN:
								if(GET_PIECE_TYPE(board[GET_POSITION(i, j+1)]) == PAWN){
									tempValue -= 8;
								}
								if(currentColor == 0x10)
									tempValue += GLOBAL_pawRow[7 - GET_ROW(pos)] + GLOBAL_pawColumn[7-GET_REAL_COLUMN(pos)] * (7-GET_ROW(pos)/2);
								else
									tempValue += GLOBAL_pawRow[GET_ROW(pos)] + GLOBAL_pawColumn[GET_REAL_COLUMN(pos)]*(GET_ROW(pos)/2);
								break;
	                            
							case KNIGHT:
								tempValue += 3 * GLOBAL_distance[pos];
								break;
	                            
							case BISHOP:
								board.getMovesFromPosition(pos, moves);
								tempValue += (int)(2.5 * (moves.size()));
								moves.clear();
								break;
	                            
							case ROOK:
								board.getMovesFromPosition(pos, moves);
								tempValue += (int)(1.5 * (moves.size()));
								moves.clear();                      
								break;
	                            
							case QUEEN:
								board.getMovesFromPosition(pos, moves);
								tempValue += (moves.size());
								moves.clear();                        
								break;
	                            
							case KING:
								//antal trÃ¦k fra MATE!
								if(board.isCheckmate(currentColor)) {
									//tempValue -= 1000 * ply;
								}
								if(gamePhase == PHASE_2){
									tempValue -= GLOBAL_distance[pos];
								}
								tempValue += 10000;
								break;
						}
					}
					else{
						switch (GET_PIECE_TYPE(board[pos])) {
							case PAWN:
								if(GET_PIECE_TYPE(board[GET_POSITION(i, j+1)]) == PAWN){
									tempValue -= 8;
								}
								if(currentColor == BLACK)
									tempValue += GLOBAL_pawRow[7-GET_ROW(pos)] + GLOBAL_pawColumn[7-GET_REAL_COLUMN(pos)]*(7-GET_ROW(pos)/2);
								else
									tempValue += GLOBAL_pawRow[GET_ROW(pos)] + GLOBAL_pawColumn[GET_REAL_COLUMN(pos)]*(GET_ROW(pos)/2);
								break;
							case KING:
								//antal træk fra MATE!
								if(board.isCheckmate(currentColor)) {
									//tempValue -= 1000 * ply;
								}
								if((materialValueBlack < 600 && currentColor == BLACK) || (materialValueWhite < 600 && currentColor == WHITE))
									tempValue -= 8 * GLOBAL_distance[pos];
								else 
									tempValue -= 2 * getDistance(i, j, currentColor, board);
								tempValue += 10000;
								break;
						}
					}
	                
					if(currentColor == BLACK)
						valueBlack += tempValue;
					else
						valueWhite += tempValue;
				}
	            
				// indoperer
				if(GET_PIECE_TYPE(board[pos]) > PAWN){
					if(board.getThreatOf(pos, currentColor) != NO_PIECE){
						if(currentColor == BLACK)
							++threatsBlack;
						else
							++threatsWhite;
					}
				}
			}
	    
	    
			if(threatsBlack == 0){
				valueBlack += 2;
			}
			else if(threatsBlack == 1){
				valueBlack -= 10;
			}
			else{
				valueBlack -= 50;
			}
		    
			if(threatsWhite == 0){
				valueWhite += 2;
			}
			else if(threatsWhite == 1){
				valueWhite -= 10;
			}
			else{
				valueWhite -= 50;
			}
		        
			valueWhite += materialValueWhite;
			valueBlack += materialValueBlack;
		    
#ifdef EVALUATOR_CACHE
//			boardValue va;
			va.first = board.getHashLock();
			va.second = valueWhite - valueBlack;
			cache[board.getHashKey()] = va;
#endif
			//return valueWhite - valueBlack;
#ifdef EVALUATOR_CACHE
		}
		if(v.first == board.getHashLock())// && v.first!=0)
		{
			printf("Cached! Hash: %i, Lock: %i, Cached Lock: %i.\n", board.getHashKey(), board.getHashLock(), v.first);
			printf("\tCached value: %i, Actual value: %i.\n", v.second, va.second);
		}
		return va.second;	//v.second
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
	Evaluator()
	{	
		materialValueBlack = 0;
		materialValueWhite = 0;
		valueBlack = 0;
		valueWhite = 0;
		tempValue = 0;
		threats = 0;
		threatsBlack = 0;
		threatsWhite = 0;
		currentColor = WHITE;
	}

    int operator()(Board board, int depth)
	{
        return evaluate(board, depth);
    }

	void clearCache()
	{
#ifdef EVALUATOR_CACHE
		//cache.clear();
		//printf("Cache elements: %i\n", cache.size());
#endif
	}
};


#endif
