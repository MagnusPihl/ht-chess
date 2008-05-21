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

std::string Move::serialize()
{
	/*ostringstream buffer;
	buffer << getOldPosition() << "," << getNewPosition() << "," << getSpecial() << "," <<
		rgetPiece() << "," << getContent() << "," << getHasMoved() << "," << getReversableMoves();
	return buffer.str();*/
	return "";
}

void Move::deserialize(std::string input)
{
	/*std::vector<int> moveVec;
	std::string::size_type lastPos = input.find_first_not_of(",", 0);
    std::string::size_type pos     = input.find_first_of(",", lastPos);

    while (std::string::npos != pos || std::string::npos != lastPos)
    {
		istringstream buffer(input.substr(lastPos, pos - lastPos));
		int tempInt;
		buffer >> tempInt;
        moveVec.push_back(tempInt);
        lastPos = input.find_first_not_of(",", pos);
        pos = input.find_first_of(",", lastPos);
    }
	if(moveVec.size() == 7)
	{
		Move move((Position)moveVec[0], (Position)moveVec[1], (ColoredPiece)moveVec[2], (ColoredPiece)moveVec[3],
			(ColoredPiece)moveVec[4], moveVec[5], moveVec[6]);
	}*/
}

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
					out << " was promoted when moving from ";
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
	
	out << COLUMN_NAMES[GET_REAL_COLUMN(move.from)] << GET_ROW(move.from)+1;	
	
	if (move.content != NO_PIECE) {
		out << " capturing " << COLOR_NAMES[(GET_PIECE_COLOR(move.content) == WHITE)] << " " << PIECE_NAMES[GET_PIECE_TYPE(move.content)];
		out << " at ";
	} else {
		out << " to ";
	}
	
	out << COLUMN_NAMES[GET_REAL_COLUMN(move.to)] << GET_ROW(move.to)+1 << std::endl;
	
	return out;
}

#endif