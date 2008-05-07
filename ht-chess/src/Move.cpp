#ifndef MOVE_CPP
#define MOVE_CPP

#include "Move.h"

Move::Move() : 
	from(INVALID_POSITION), to(INVALID_POSITION), special(NO_PIECE), piece(NO_PIECE), content(NO_PIECE), hasMoved(0), enPassantPosition(INVALID_POSITION), reversableMoves(0)//, boardValue(INVALID_BOARD_VALUE) 
{}

Move::Move(
	Position _from, Position _to, ColoredPiece _special, ColoredPiece _piece, ColoredPiece _content, int _hasMoved, Position _enPassantPosition, int _reversableMoves) :
		from(_from), to(_to), special(_special), piece(_piece), content(_content), hasMoved(_hasMoved), enPassantPosition(_enPassantPosition), reversableMoves(_reversableMoves) //, boardValue(INVALID_BOARD_VALUE)
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
	board.reversableMoves++;		
	int colorIndex = (color == WHITE);

	//black top 8
	//white bottom 1
	if (content != NO_PIECE) {
		board.reversableMoves = 0;
		board.materialValue[(GET_PIECE_COLOR(content) == WHITE)] -= PIECE_VALUE[GET_PIECE_TYPE(content)];
	}

	switch (type) {
		case PAWN:
			board.reversableMoves = 0;			
			
			if (((GET_ROW(to) - GET_ROW(from))*PAWN_DIRECTION[colorIndex]) == 2) {				
				board.enPassantPosition = COMBINE_TO_POSITION(GET_COLUMN(to), PAWN_ENPASSANT_TAKE_ROW[(colorIndex ^ 0x01)]);
			}			
			
			break;			
	
		case KING:					
			board.setPositionOfKing(to, color);
			board.hasMoved[colorIndex] |= KING_MOVED;
			break;
			
		case ROOK:
			//set rook moved
			if ((!HAS_ROOK_A_MOVED(board, colorIndex)) && 
				(from == CASTLING_COLUMN_A[colorIndex])) {
				
				board.hasMoved[colorIndex] |= ROOK_A_MOVED;					
				
			} else if ((!HAS_ROOK_H_MOVED(board, colorIndex)) && 
				(from == CASTLING_COLUMN_H[colorIndex])) {
				
				board.hasMoved[colorIndex] |= ROOK_H_MOVED;
			}
			
			break;
			
	}

	//special moves
	switch (GET_PIECE_TYPE(special)) { 
	
		case PAWN: //en-passant or promotion			

				//changed
			if (GET_ROW(to) == PAWN_ENPASSANT_TAKE_ROW[colorIndex]) { //en-passant
				board[COMBINE_TO_POSITION(GET_COLUMN(to), PAWN_ENPASSANT_CONTENT_ROW[colorIndex])] = NO_PIECE;					
			} else {					
				board.materialValue[colorIndex] += (PIECE_VALUE[QUEEN] - PIECE_VALUE[PAWN]);
			}
			break;
			
		case KING: //castling
			
			board.hasCastled[colorIndex] = true;
			
			if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
				board[CASTLING_COLUMN_F[colorIndex]] = GET_COLORED_PIECE(ROOK,color);
				board[CASTLING_COLUMN_H[colorIndex]] = NO_PIECE;
				board.hasMoved[colorIndex] |= ROOK_H_MOVED;
			} else { //queenside castling										
				board[CASTLING_COLUMN_D[colorIndex]] = GET_COLORED_PIECE(ROOK,color);
				board[CASTLING_COLUMN_A[colorIndex]] = NO_PIECE;
				board.hasMoved[colorIndex] |= ROOK_A_MOVED;
			}
			break;			
	}			
}

void Move::unexecute(Board &board)
{		
	Color color = GET_PIECE_COLOR(piece);
	int colorIndex = (color == WHITE);
	board.enPassantPosition = enPassantPosition;
	board.reversableMoves = reversableMoves;
	board.hasMoved[colorIndex] = hasMoved;		
	board.materialValue[(GET_PIECE_COLOR(content) == WHITE)] += PIECE_VALUE[GET_PIECE_TYPE(content)];	
	
	
	if (GET_PIECE_TYPE(piece) == KING) {		
		board.setPositionOfKing(from, color);
	}
	
	switch (GET_PIECE_TYPE(special)) {
		case NO_PIECE:
			board[from] = piece;
			board[to] = content;
			break;
			
		case PAWN: //promotion and en-passant
					
					//changed
			if (GET_ROW(to) == PAWN_ENPASSANT_TAKE_ROW[colorIndex]) { //en-passant
				board[COMBINE_TO_POSITION(GET_COLUMN(to), PAWN_ENPASSANT_CONTENT_ROW[colorIndex])] = content;					
				board[to] = NO_PIECE;
				board[from] = piece;	
			} else { //promotion
				board.materialValue[colorIndex] += (PIECE_VALUE[PAWN] - PIECE_VALUE[QUEEN]);
				board[from] = special;
				board[to] = content;
			}
			break;

		case KING: //castling
			board[from] = piece;
			board[to] = NO_PIECE;		
			board.hasCastled[colorIndex] = false;
			
			if (GET_COLUMN(to) == COLUMN_G) { //kingside castling					
				board[CASTLING_COLUMN_F[colorIndex]] = NO_PIECE;
				board[CASTLING_COLUMN_H[colorIndex]] = GET_COLORED_PIECE(ROOK,color);
			} else { //queenside castling
				board[CASTLING_COLUMN_D[colorIndex]] = NO_PIECE;
				board[CASTLING_COLUMN_A[colorIndex]] = GET_COLORED_PIECE(ROOK,color);
			}
			break;	
	}
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
