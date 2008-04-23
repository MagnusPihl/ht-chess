#ifndef MOVE_CPP
#define MOVE_CPP

#include "Move.h"

Move::Move() {}

Move::Move(Position _from, Position _to, ColoredPiece _special, ColoredPiece _piece, ColoredPiece _content, int _hasMoved, Position _enPassantPosition) :
	from(_from), to(_to), special(_special), piece(_piece), content(_content), hasMoved(_hasMoved), enPassantPosition(_enPassantPosition)
{
	#ifdef TEST_MOVE_VALIDITY 
		if (isValid(*this)) {
			throw "invalid move";
		}
	#endif
}	

//
void Move::execute(Board &board)
{
	board[from] = NO_PIECE;
	board[to] = piece;	
	board.enPassantPosition = INVALID_POSITION;
	Piece type = GET_PIECE_TYPE(piece);
	Color color = GET_PIECE_COLOR(piece);

	//black top 8
	//white bottom 1
	if (content != NO_PIECE) {
		board.materialValue[(GET_PIECE_COLOR(content) == WHITE)] -= PIECE_VALUE[GET_PIECE_TYPE(content)];
	}

	switch (type) {
		case PAWN:
			if (color == WHITE) {
				if (GET_ROW(to) - GET_ROW(from) == 2) {
					board.enPassantPosition = COMBINE_TO_POSITION(GET_COLUMN(to), ROW_3);
				}
			} else {
				if (GET_ROW(from) - GET_ROW(to) == 2) {
					board.enPassantPosition = COMBINE_TO_POSITION(GET_COLUMN(to), ROW_5);
				}
			}
			break;			
	
		case KING:					
			if (color == WHITE) {
				board.setPositionOfKing(to, color);
				board.hasMoved |= HAS_MOVED_KING_WHITE;
			} else {
				board.setPositionOfKing(to, color);
				board.hasMoved |= HAS_MOVED_KING_BLACK;				
			}
			break;
			
		case ROOK:
			//set rook moved
			if (color == WHITE) {
				if (((board.hasMoved & HAS_MOVED_ROOKA_WHITE) != 0)&&(from == A1)) {
					board.hasMoved |= HAS_MOVED_ROOKA_WHITE;
				} else if (((board.hasMoved & HAS_MOVED_ROOKH_WHITE) != 0)&&(from == H1)) {
					board.hasMoved |= HAS_MOVED_ROOKH_WHITE;
				}
			} else {
				if (((board.hasMoved & HAS_MOVED_ROOKA_BLACK) != 0)&&(from == A8)) {
					board.hasMoved |= HAS_MOVED_ROOKA_BLACK;
				} else if (((board.hasMoved & HAS_MOVED_ROOKH_BLACK) != 0)&&(from == H8)) {
					board.hasMoved |= HAS_MOVED_ROOKH_BLACK;
				}
			}
			break;
			
	}

	//special moves
	switch (GET_PIECE_TYPE(special)) { 
	
		case PAWN: //en-passant or promotion
			if (color == BLACK) { //black

				if (GET_ROW(to) == ROW_3) { //en-passant
					board[COMBINE_TO_POSITION(GET_COLUMN(to), ROW_4)] = NO_PIECE;					
				} else {
					board.materialValue[BLACK_INDEX] += PIECE_VALUE[QUEEN] - PIECE_VALUE[PAWN];
				}

			} else { //white
				
				if (GET_ROW(to) == ROW_6) { //en-passant
					board[COMBINE_TO_POSITION(GET_COLUMN(to), ROW_5)] = NO_PIECE;					
				} else {
					board.materialValue[WHITE_INDEX] += PIECE_VALUE[QUEEN] - PIECE_VALUE[PAWN];
				}
			}
			break;
			
		case KING: //castling

			if (color == BLACK) { //black
				board.hasCastled[BLACK_INDEX] = true;

				if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
					board[F8] = ROOK_BLACK;
					board[H8] = NO_PIECE;
					board.hasMoved |= HAS_MOVED_ROOKH_BLACK;
				} else { //queenside castling
					board[D8] = ROOK_BLACK;
					board[A8] = NO_PIECE;
					board.hasMoved |= HAS_MOVED_ROOKA_BLACK;
				}

			} else { //white
				board.hasCastled[WHITE_INDEX] = true;

				if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
					board[F1] = ROOK_WHITE;
					board[H1] = NO_PIECE;
					board.hasMoved |= HAS_MOVED_ROOKH_WHITE;
				} else { //queenside castling
					board[D1] = ROOK_WHITE;
					board[A1] = NO_PIECE;
					board.hasMoved |= HAS_MOVED_ROOKH_WHITE;
				}							
			}
			break;			
	}			
}

void Move::unexecute(Board &board)
{
	board.hasMoved = hasMoved;
	board.enPassantPosition = enPassantPosition;
	Color color = GET_PIECE_COLOR(piece);
	
	if (content != NO_PIECE) {
		board.materialValue[(GET_PIECE_COLOR(content) == WHITE)] += PIECE_VALUE[GET_PIECE_TYPE(content)];
	}
	
	if (GET_PIECE_TYPE(piece) == KING) {		
		board.setPositionOfKing(from, color);
	}
	
	if (special == NO_PIECE) {
		board[from] = piece;
		board[to] = content;
	} else if (GET_PIECE_TYPE(special) == PAWN) { //promotion and en-passant
					
		if (color == BLACK) { //black

			if (GET_ROW(to) == ROW_1) { //promotion
				board.materialValue[BLACK_INDEX] += PIECE_VALUE[PAWN] - PIECE_VALUE[QUEEN];
				board[from] = PAWN_BLACK;
				board[to] = content;

			} else { //en-passant
				board[COMBINE_TO_POSITION(GET_COLUMN(to), ROW_4)] = content;				
				board[to] = NO_PIECE;
				board[from] = piece;					
			}

		} else { //white

			if (GET_ROW(to) == ROW_8) { //promotion
				board.materialValue[WHITE_INDEX] += PIECE_VALUE[PAWN] - PIECE_VALUE[QUEEN];
				board[from] = PAWN_WHITE;
				board[to] = content;

			} else { //en-passant
				board[COMBINE_TO_POSITION(GET_COLUMN(to), ROW_5)] = content;
				board[to] = NO_PIECE;
				board[from] = piece;					
			}
		}

	} else if (GET_PIECE_TYPE(special) == KING) { //castling
		board[from] = piece;
		board[to] = NO_PIECE;		

		if (color == BLACK) { //black				
		
			board.hasCastled[BLACK_INDEX] = false;
			
			if (GET_COLUMN(to) == COLUMN_G) { //kingside castling					
				board[F8] = NO_PIECE;
				board[H8] = ROOK_BLACK;
			} else { //queenside castling
				board[D8] = NO_PIECE;
				board[A8] = ROOK_BLACK;
			}

		} else { //white
			
			board.hasCastled[WHITE_INDEX] = false;

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

//accessors
Position Move::getOldPosition()
{
	return from;
}

Position Move::getNewPosition()
{
	return to;
}

ColoredPiece Move::getSpecial()
{
	return special;
}

ColoredPiece Move::getPiece()
{
	return piece;
}

ColoredPiece Move::getContent()
{
	return content;
}

int Move::getHasMoved() {
	return hasMoved;
}
		
Position Move::getEnPassantPosition() {
	return enPassantPosition;
}



/**
 * Makes a general check on the validity of the move. 
 * Be advised though that this function does not check the actual board
 * for the legality. Does not check for checkmate, mate, stalemate, and blocking pieces
 * only validity of positions.
 */
/*bool Move::isValid(Move &move) {
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
/*	}		
	return true;
}*/

#endif
