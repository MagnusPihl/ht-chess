#ifndef MOVE_GENERATOR_H
#define MOVE_GENERATOR_H

#include "Board.h"
#include "Move.h"
#include <vector>

using namespace std;

class MoveGenerator {
	
public:

	static void generateMoves(Board &board, int color, vector<Move> &moves) {			
		int x, y, position;		
		
		for (x = 0; x < ROW_COUNT; ++x) {
			for (y = 0; y < COLUMN_COUNT; ++y) {	
				position = GET_POSITION(x,y);
				if (GET_PIECE_COLOR(board.getItemAt(position)) == color) {
					board.getMovesFromPosition(position, moves);
				}			
			}
		}
	}
};

#endif MOVE_GENERATOR_H