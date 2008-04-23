#ifndef MOVE_GENERATOR_CPP
#define MOVE_GENERATOR_CPP

#include "MoveGenerator.h"

void MoveGenerator::generateMoves(Board &board, Color color, std::vector<Move> &moves) {			
	int x, y;		
	Position position;
	
	for (x = 0; x < ROW_COUNT; ++x) {
		for (y = 0; y < COLUMN_COUNT; ++y) {	
			position = GET_POSITION(x,y);
			if (GET_PIECE_COLOR(board.getItemAt(position)) == color) {
				board.getMovesFromPosition(position, moves);
			}			
		}
	}
}

#endif MOVE_GENERATOR_H