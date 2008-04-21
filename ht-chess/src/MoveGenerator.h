#ifndef MOVE_GENERATOR_H
#define MOVE_GENERATOR_H

#include "Board.h"
#include "Move.h"
#include <vector>

using namespace std;

class MoveGenerator {

private:
	Board *board;
	vector<Move> lastGenerated;	
	
public:

	MoveGenerator(Board *_board) : board(_board) {}

	vector<Move> * generateMoves(int color) {	
		lastGenerated.clear();
		int x, y, position;		
		
		for (x = 0; x < ROW_COUNT; ++x) {
			for (y = 0; y < COLUMN_COUNT; ++y) {	
				position = GET_POSITION(x,y);
				if (GET_PIECE_COLOR(board->getItemAt(position)) == color) {
					board->getMovesFromPosition(position, lastGenerated);
				}			
			}
		}
		
		return &lastGenerated;
	}
};

#endif MOVE_GENERATOR_H