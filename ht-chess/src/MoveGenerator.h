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

	void generateWhiteMoves() {	
		int x, y;		
		lastGenerated.clear();
		ColoredPiece *boardContent = board->getContent();
		
		if (boardContent[E1] == KING_WHITE) {
			if ((boardContent[F1] == NO_PIECE) &&
				(boardContent[G1] == NO_PIECE) &&
				(boardContent[H1] == ROOK_WHITE)) {
				lastGenerated.push_back(Move(E1, G1, KING_WHITE, KING_WHITE, NO_PIECE));
			}
			if ((boardContent[A1] == ROOK_WHITE) &&
				(boardContent[B1] == NO_PIECE) &&
				(boardContent[C1] == NO_PIECE) &&
				(boardContent[D1] == NO_PIECE)) {
				lastGenerated.push_back(Move(E1, C1, KING_WHITE, KING_WHITE, NO_PIECE));
			}
		}		
			
		for (x = 0; x < ROW_COUNT; ++x) {
			for (y = 0; y < COLUMN_COUNT; ++y) {
				ColoredPiece piece = boardContent[GET_POSITION(x,y)];
				
				if ((piece & WHITE) == WHITE) {
					if ((piece & PAWN) == PAWN) { //pawns
						if ((x == 1) && //double advance
							(boardContent[GET_POSITION(x,y+1)] == NO_PIECE) &&
							(boardContent[GET_POSITION(x,y+2)] == NO_PIECE)) {
							lastGenerated.push_back(Move(GET_POSITION(x,y), GET_POSITION(x,y+2), NO_PIECE, piece, NO_PIECE));
						}
						
						if (y+1 < COLUMN_COUNT) { //single advances							
							ColoredPiece special = NO_PIECE;
							if ((y + 1) == (COLUMN_COUNT - 1)) { //promotion
								piece = QUEEN_WHITE;
								special = PAWN_WHITE;
							}
							
							//left capture
							if ((x > 0)&&(((boardContent[GET_POSITION(x-1,y+1)]) & BLACK) == BLACK)) {
								lastGenerated.push_back(Move(GET_POSITION(x,y), GET_POSITION(x-1,y+1), special, piece, boardContent[GET_POSITION(x-1,y+1)]));
							}		
										
							//right capture	
							if ((x < ROW_COUNT)&&(((boardContent[GET_POSITION(x+1,y+1)]) & BLACK) == BLACK)) {
								lastGenerated.push_back(Move(GET_POSITION(x,y), GET_POSITION(x+1,y+1), special, piece, boardContent[GET_POSITION(x-1,y+1)]));
							}
							
							//normal advance
							if (boardContent[GET_POSITION(x,y+1)] == NO_PIECE) {
								lastGenerated.push_back(Move(GET_POSITION(x,y), GET_POSITION(x,y+1), special, piece, NO_PIECE));
							}
						}
					}
				} else if ((piece & BLACK) == BLACK) {
					/*if ((piece & PAWN) == PAWN) { //pawns
						if ((x == 6) && //double advance
							(boardContent[GET_POSITION(x,y-1)] == NO_PIECE) &&
							(boardContent[GET_POSITION(x,y-2)] == NO_PIECE)) {
							lastGenerated.push_back(Move(GET_POSITION(x,y), GET_POSITION(x,y-2), NO_PIECE, piece, NO_PIECE));
						}
						
						if (y+1 < COLUMN_COUNT) { //single advances							
							ColoredPiece special = NO_PIECE;
							if ((y - 1) == (COLUMN_COUNT - 1)) { //promotion
								piece = QUEEN_BLACK;
								special = PAWN_BLACK;
							}
							
							//left capture
							if ((x > 0)&&(((boardContent[GET_POSITION(x-1,y+1)]) & BLACK) == BLACK)) {
								lastGenerated.push_back(Move(GET_POSITION(x,y), GET_POSITION(x-1,y+1), special, piece, boardContent[GET_POSITION(x-1,y+1)]));
							}		
										
							//right capture	
							if ((x < ROW_COUNT)&&(((boardContent[GET_POSITION(x+1,y+1)]) & BLACK) == BLACK)) {
								lastGenerated.push_back(Move(GET_POSITION(x,y), GET_POSITION(x+1,y+1), special, piece, boardContent[GET_POSITION(x-1,y+1)]));
							}
							
							//normal advance
							if (boardContent[GET_POSITION(x,y+1)] == NO_PIECE) {
								lastGenerated.push_back(Move(GET_POSITION(x,y), GET_POSITION(x,y+1), special, piece, NO_PIECE));
							}
						}
					}*/
				}
			}			
		}				
	}
	
public:

	MoveGenerator(Board *_board) : board(_board) {}

	vector<Move> * generateMoves(int color) {	
		lastGenerated.clear();
		if (color == WHITE) {
			generateWhiteMoves();
		} else {
			//generateBlackMoves();
		}
		
		return &lastGenerated;
	}
};

#endif MOVE_GENERATOR_H