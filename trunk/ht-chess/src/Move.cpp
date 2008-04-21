#ifndef MOVE_CPP
#define MOVE_CPP

#include "Move.h"

Move::Move() {}

Move::Move(int _from, int _to, ColoredPiece _special, ColoredPiece _piece, ColoredPiece _content) :
	from(_from), to(_to), special(_special), piece(_piece), content(_content)
{
	#ifdef TEST_MOVE_VALIDITY 
		if (isValid(*this)) {
			throw "invalid move";
		}
	#endif
}	

//
void Move::execute(Board *_board)
{
	ColoredPiece* board = _board->getContent();
	board[from] = NO_PIECE;
	board[to] = piece;

	//black top 8
	//white bottom 1

	//special moves
	if (GET_PIECE_TYPE(special) == PAWN) { //en-passant

		if (GET_PIECE_COLOR(special) == BLACK) { //black

			if (GET_ROW(to) == ROW_3) {
				board[GET_COLUMN(to) | ROW_4] = NO_PIECE;					
			}

		} else { //white
			
			if (GET_ROW(to) == ROW_6) {
				board[GET_COLUMN(to) | ROW_5] = NO_PIECE;					
			}
		}
	} else if (GET_PIECE_TYPE(special) == KING) { //castling

		if (GET_PIECE_COLOR(special) == BLACK) { //black

			if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
				board[F8] = ROOK_BLACK;
				board[H8] = NO_PIECE;
			} else { //queenside castling
				board[D8] = ROOK_BLACK;
				board[A8] = NO_PIECE;
			}

		} else { //white

			if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
				board[F1] = ROOK_WHITE;
				board[H1] = NO_PIECE;
			} else { //queenside castling
				board[D1] = ROOK_WHITE;
				board[A1] = NO_PIECE;
			}							
		}
	}
}

void Move::unexecute(Board *_board)
{
	ColoredPiece* board = _board->getContent();
	
	if (special == NO_PIECE) {
		board[from] = piece;
		board[to] = content;
	} else if (GET_PIECE_TYPE(special) == PAWN) { //promotion and en-passant
					
		if (GET_PIECE_COLOR(piece) == BLACK) { //black

			if (GET_ROW(to) == ROW_1) { //promotion
				board[from] = PAWN_BLACK;
				board[to] = content;

			} else { //en-passant
				board[GET_COLUMN(to) | ROW_4] = PAWN_WHITE;
				board[to] = NO_PIECE;
				board[from] = piece;
			}

		} else { //white

			if (GET_ROW(to) == ROW_8) { //promotion
				board[from] = PAWN_WHITE;
				board[to] = content;

			} else { //en-passant
				board[GET_COLUMN(to) | ROW_5] = PAWN_BLACK;
				board[to] = NO_PIECE;
				board[from] = piece;
			}
		}

	} else if (GET_PIECE_TYPE(special) == KING) { //castling
		board[from] = piece;
		board[to] = NO_PIECE;
		
		if (GET_PIECE_COLOR(piece)) == BLACK) { //black				

			if (GET_COLUMN(to) == COLUMN_G) { //kingside castling					
				board[F8] = NO_PIECE;
				board[H8] = ROOK_BLACK;
			} else { //queenside castling
				board[D8] = NO_PIECE;
				board[A8] = ROOK_BLACK;
			}

		} else { //white

			if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
				board[F1] = NO_PIECE;
				board[H1] = ROOK_WHITE;
			} else { //queenside castling
				board[D1] = NO_PIECE;
				board[A1] = ROOK_WHITE;
			}							
		}
	}
}

/**
 * Makes a general check on the validity of the move. 
 * Be advised though that this function does not check the actual board
 * for the legality. Does not check for checkmate, mate, stalemate, and blocking pieces
 * only validity of positions.
 */
bool Move::isValid(Move &move) {
	//position validity
	if (!IS_VALID_POSITION(move.from)) {
		return false;
	}
	if (!IS_VALID_POSITION(move.to)) {
		return false;
	}
	
	//moved piece and taken piece must be of different colors
	if ((move.content & PIECE_COLOR) == (move.piece & PIECE_COLOR)) {
		return false;
	}

	//special moves
	if (move.special != NO_PIECE) {
		if ((move.special & KING) == KING) {
			//king must be in initial position
			if (GET_COLUMN(move.from) != COLUMN_E) {
				return false;
			}
			if ((GET_COLUMN(move.to) != COLUMN_G) && (GET_COLUMN(move.to) != COLUMN_C)) {
				return false;	
			}

			if ((move.special & BLACK) == BLACK) { //black
				//king must be in top row
				if ((GET_ROW(move.from) != ROW_8) || (GET_ROW(move.to) != ROW_8)) {
					return false;					
				}

			} else { //white
				//king must be in top row
				if ((GET_ROW(move.from) != ROW_1) || (GET_ROW(move.to) != ROW_1)) {
					return false;
				}
			}

		} else if ((move.special & PAWN) == PAWN) {

			if ((move.special & BLACK) == BLACK) { //black
				
			}

		} else {
			return false;
		}

	} else {
		/*if (move.piece & PAWN) {				
			if (GET_ROW(from) == )
		}*/
	}		
	return true;
}

//accessors
int Move::getOldPosition(void)
{
	return from;
}

int Move::getNewPosition(void)
{
	return to;
}

ColoredPiece Move::getSpecial(void)
{
	return special;
}

ColoredPiece Move::getPiece(void)
{
	return piece;
}

ColoredPiece Move::getContent(void)
{
	return content;
}

#endif