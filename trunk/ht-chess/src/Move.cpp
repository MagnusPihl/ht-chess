#ifndef MOVE_CPP
#define MOVE_CPP

#include "Move.h"

Move::Move() : 
	from(INVALID_POSITION), 
	to(INVALID_POSITION), 
	special(NO_PIECE), 
	piece(NO_PIECE), 
	content(NO_PIECE), 
	hasMoved(0), 
#if USE_EN_PASSANT == 1
	enPassantPosition(INVALID_POSITION), 
#endif	
	reversableMoves(0)
{}

Move::Move(
	Position _from, 
	Position _to, 
	ColoredPiece _special, 
	ColoredPiece _piece, 
	ColoredPiece _content, 
	int _hasMoved, 
#if USE_EN_PASSANT == 1
	Position _enPassantPosition, 
#endif
	int _reversableMoves) :
		from(_from), 
		to(_to), 
		special(_special), 
		piece(_piece), 
		content(_content), 
		hasMoved(_hasMoved), 
	#if USE_EN_PASSANT == 1
		enPassantPosition(_enPassantPosition), 
	#endif
		reversableMoves(_reversableMoves) 
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
	
	#if USE_EN_PASSANT == 1
		board.enPassantPosition = INVALID_POSITION;
	#endif
	
	Piece type = GET_PIECE_TYPE(piece);
	Color color = GET_PIECE_COLOR(piece);
	board.reversableMoves++;		
	int colorIndex = (color == WHITE);

	//black top 8
	//white bottom 1
	if (content != NO_PIECE) {
		board.reversableMoves = 0;
		board.materialValue[(GET_PIECE_COLOR(content) == WHITE)] -= PIECE_VALUE[GET_PIECE_TYPE(content)];
		if (GET_PIECE_TYPE(content) == KING) {
			board.kingPosition[colorIndex ^ 0x01] = INVALID_POSITION;
		}
	}

	switch (type) {
		case PAWN:
			board.reversableMoves = 0;			
			
			#if USE_EN_PASSANT == 1
				if (((GET_ROW(to) - GET_ROW(from))*PAWN_DIRECTION[colorIndex]) == 2) {				
					board.enPassantPosition = COMBINE_TO_POSITION(GET_COLUMN(to), PAWN_ENPASSANT_TAKE_ROW[(colorIndex ^ 0x01)]);
				}			
			#endif
					
			break;			
	
		case KING:					
			board.kingPosition[colorIndex] = to;
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
			#if USE_EN_PASSANT == 1
				if (GET_ROW(to) == PAWN_ENPASSANT_TAKE_ROW[colorIndex]) { //en-passant
					board[COMBINE_TO_POSITION(GET_COLUMN(to), PAWN_ENPASSANT_CONTENT_ROW[colorIndex])] = NO_PIECE;					
				} else {		
			#endif			
					board.materialValue[colorIndex] += (PIECE_VALUE[QUEEN] - PIECE_VALUE[PAWN]);
			#if USE_EN_PASSANT == 1
				}			
			#endif
			
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
	
	#if USE_EN_PASSANT == 1
		board.enPassantPosition = enPassantPosition;
	#endif
	
	board.reversableMoves = reversableMoves;
	board.hasMoved[colorIndex] = hasMoved;		
	board.materialValue[(GET_PIECE_COLOR(content) == WHITE)] += PIECE_VALUE[GET_PIECE_TYPE(content)];	
	
	if (GET_PIECE_TYPE(content) == KING) {
		board.kingPosition[colorIndex ^ 0x01] = to;
	}
	
	
	if (GET_PIECE_TYPE(piece) == KING) {		
		board.kingPosition[colorIndex] = from;
	}
	
	switch (GET_PIECE_TYPE(special)) {
		case NO_PIECE:
			board[from] = piece;
			board[to] = content;
			break;
			
		case PAWN: //promotion and en-passant
					
					//changed
			#if USE_EN_PASSANT == 1
				if (GET_ROW(to) == PAWN_ENPASSANT_TAKE_ROW[colorIndex]) { //en-passant
					board[COMBINE_TO_POSITION(GET_COLUMN(to), PAWN_ENPASSANT_CONTENT_ROW[colorIndex])] = content;					
					board[to] = NO_PIECE;
					board[from] = piece;	
				} else { //promotion
			#endif
					board.materialValue[colorIndex] += (PIECE_VALUE[PAWN] - PIECE_VALUE[QUEEN]);
					board[from] = special;
					board[to] = content;
			#if USE_EN_PASSANT == 1
				}
			#endif
			
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


std::ostream& operator << (std::ostream& out, const Move& move) {	
	out << COLOR_NAMES[(GET_PIECE_COLOR(move.piece) == WHITE)] << " " << PIECE_NAMES[GET_PIECE_TYPE(move.piece)];
	
	switch (GET_PIECE_TYPE(move.special)) {		
		case PAWN: //en-passant or promotion			

			//changed
			#if USE_EN_PASSANT == 1
				if (GET_ROW(move.to) == PAWN_ENPASSANT_TAKE_ROW[(GET_PIECE_COLOR(move.piece) == WHITE)]) { //en-passant
					out << " used en-passant from "
				} else {		
			#endif			
					out << " was promoted to a when moving from ";
			#if USE_EN_PASSANT == 1
				}			
			#endif
			
			break;
			
		case KING: //castling									
			if (GET_COLUMN(move.to) == COLUMN_G) { //kingside castling
				out << " made kingside castling from ";
			} else { //queenside castling										
				out << " made queenside castling from ";
			}
			break;		
		default:
			out << " moved from ";	
	}
	
	out << COLUMN_NAMES[GET_REAL_COLUMN(move.from)] << GET_ROW(move.to);	
	
	if (move.content != NO_PIECE) {
		out << " capturing " << COLOR_NAMES[(GET_PIECE_COLOR(move.content) == WHITE)] << " " << PIECE_NAMES[GET_PIECE_TYPE(move.content)];
		out << " at ";
	} else {
		out << " to ";
	}
	
	out << COLUMN_NAMES[GET_REAL_COLUMN(move.to)] << GET_ROW(move.to) << std::endl;
	
	return out;
}

#endif