/*
 * File:   Validater.h
 * Author: zeor
 *
 * Created on April 21, 2008, 10:13 AM
 */
#ifndef VALIDATOR_H
#define VALIDATOR_H

#include <vector>
#include <stdlib>
#include "Move.h"

class Validator {
private:
    int pawRow[8] = {0, 0, -1, 0, 2, 14, 30, 0};
    int pawColumn[8] = {-2, 0, 3, 4, 5, 1, -2, -2};
    int materialValueBlack = 0;
    int materialValueWhite = 0;
    int valueBlack = 0;
    int valueWhite = 0;
    int tempValue = 0;
    int threats = 0;    
    
    int distance[256] = {3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0,
                         3, 2, 2, 2, 2, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
                         3, 2, 1, 1, 1, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
                         3, 2, 1, 0, 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
                         3, 2, 1, 0, 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
                         3, 2, 1, 1, 1, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
                         3, 2, 2, 2, 2, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0,
                         3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,    
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,};
                         
    
    
    int validate(Board &board, int playerColor) {
        vector<Move> moves;
        ColoredPiece piece;
        Position pos;
        materialValueBlack = board.getMaterialValue(0x10);
        materialValueWhite = board.getMaterialValue(0x20);
        
        if(board.hasCastle())
            castle = 16;
        else 
            castle = 0;
            
        valueBlack = 0;
        valueWhite = 0;
        threats = 0;
        
        for(int i = 0; i < 8; ++i){
            for(int j = 0; j < 8; ++j){
                pos = GET_POSITION(i, j);
                // <editor-fold defaultstate="collapsed">
                    switch (GET_PIECE_TYPE(content[pos])) {
                        case PAWN:
                            if(GET_PIECE_TYPE(content[GET_POSITION(i,j+1)]) == PAWN){
                                tempValue -= 8;
                            }
                            tempValue += pawRow[GET_ROW(pos)] + pawColumn[GET_REAL_COLUMN(pos)]*(GET_ROW(pos)/2);
                            break;
                        case KNIGHT:
                            tempValue += 3 * distance[pos];
                            moves.clear();
                            break;
                        case BISHOP:
                            getMovesFromPosition(pos,  &moves);
                            tempValue += 2.5 * moves.size();
                            moves.clear();
                            break;
                        case ROOK:
                            getMovesFromPosition(pos,  &moves);
                            tempValue += 1.5 * moves.size();
                            moves.clear();
                            break;
                        case QUEEN:
                            getMovesFromPosition(pos,  &moves);
                            tempValue += moves.size();
                            moves.clear();
                            break;
                        case KING:
                            //antal træk fra MATE!
                            tempValue += 10000;
                            break;
                    }
                    
    // </editor-fold>
                    if(GET_PIECE_COLOR(content[pos]) == 0x10)
                        valueBlack += tempValue;
                    else
                        valueWhite += tempValue;
                }
            
            // indoperer
                    if(GET_PIECE_TYPE(content[pos]) > PAWN){
                        if(board.getThreatOf(pos, color) != NO_PIECE){
                            ++threats;
                        }
                    }
            }
        }
        if(threats == 0){
            value += 2;
        }
        else if(threats == 1){
            value -= 10;
        }
        else{
            value -= 50;
        }
    }
    
    int getDistance(Position pos){

    }
public:
    int operator()(Board board) const {
        return validate(board);
    }
};

/*
 *Konge + antal træk til mat
 *Springer og felter til midt
 *Kort rokade
 */


#endif