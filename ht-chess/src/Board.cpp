#ifndef BOARD_CPP
#define BOARD_CPP

#include "Board.h"

Board::Board() : content(vector<ColoredPiece>(CONTENT_SIZE)) 
{
	resetBoard();
}

Board::Board(const Board& rhs) : content(vector<ColoredPiece>(CONTENT_SIZE))
{
	for (int i = 0; i < CONTENT_SIZE; ++i)
	{
		content[i] = rhs.content[i];		
	}
}

Board& Board::operator= (Board& rhs) {
	if (this != &rhs)
	{
		for (int i = 0; i < CONTENT_SIZE; ++i)
		{
			content[i] = rhs.content[i];
		}
	}
	return *this;
}

ColoredPiece & Board::operator[](int pos)
{
    return content[pos];
}

const ColoredPiece & Board::operator[](int pos) const
{
    return content[pos];
}

Board::~Board() {
	//delete stuff
}

void Board::testMethod()
{
	content[D4] = (ColoredPiece)(BLACK | QUEEN);
}

/**
/* Should we do boundary check here?
/**/
ColoredPiece Board::getItemAt(int position) 
{
	#ifdef CHECK_OVERFLOW
		if (!IS_VALID_POSITION(position)) 
		{
			throw "Index out of bounds: " + position;
		}
	#endif
	
	return content[position];
}

vector<ColoredPiece> & Board::getContent() {
	return content;
}

void Board::getMovesFromPosition(int position, vector<Move> &moves) {
	#ifdef CHECK_OVERFLOW
		if (!IS_VALID_POSITION(position)) 
		{
			throw "Index out of bounds: " + position;
		}					
	#endif
	
	ColoredPiece piece = content[position];
	
	switch (GET_PIECE_TYPE(piece)) {
		case PAWN: return getPawnMovesFrom(position, moves);
		case KNIGHT: return getKnightMovesFrom(position, moves);
		case BISHOP: return getBishopMovesFrom(position, moves);
		case ROOK: return getRookMovesFrom(position, moves);
		case QUEEN: return getQueenMovesFrom(position, moves);
		case KING: return getKingMovesFrom(position, moves);
	}
}		

void Board::getPawnMovesFrom(int position, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	int color = GET_PIECE_COLOR(content[position]);
	ColoredPiece piece = content[position];
	
	if (color == WHITE) {			
		if ((row == ROW_2) && //double advance
			(content[ GET_POSITION( column, row + 1) ] == NO_PIECE) &&
			(content[ GET_POSITION( column, row + 2) ] == NO_PIECE)) {
			
			Move move = Move(
					GET_POSITION(column, row), 
					GET_POSITION(column, row + 2), 
					NO_PIECE, 
					piece, 
					NO_PIECE,
					hasMoved);
									
			move.execute(*this);
			
			if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
				moves.push_back(move);
			}
								
			move.unexecute(*this);
		}
		
		if ((row + 1) < ROW_COUNT) { //single advances							
			ColoredPiece special = NO_PIECE;
			
			if ((row + 1) == (ROW_COUNT - 1)) { //promotion
				special = piece;
				piece = QUEEN_WHITE; //could be changed to let user choose					
			}
			
			//left capture
			if ((column > 0) && (GET_PIECE_COLOR(content[GET_POSITION(column - 1, row + 1)]) == BLACK)) {
				Move move = Move(
						GET_POSITION(column, row), 
						GET_POSITION(column - 1, row + 1), 
						special, 
						piece, 
						content[GET_POSITION(column - 1, row + 1)],
						hasMoved);
																
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}		
						
			//right capture	
			if ((column < (COLUMN_COUNT - 1)) && (GET_PIECE_COLOR(content[ GET_POSITION( column + 1 , row + 1) ]) == BLACK)) {
				
				Move move = Move(
						GET_POSITION(column, row), 
						GET_POSITION(column + 1, row + 1), 
						special, 
						piece, 
						content[GET_POSITION(column + 1, row + 1)],
						hasMoved);
																
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}
			
			//normal advance
			if (content[GET_POSITION(column, row + 1)] == NO_PIECE) {
				
				 Move move = Move(
						GET_POSITION(column, row), 
						GET_POSITION(column, row + 1), 
						special, 
						piece, 
						NO_PIECE,
						hasMoved);												
				
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}
		}
	} else { //black
		if ((row == ROW_7) && //double advance
			(content[ GET_POSITION( column, row - 1) ] == NO_PIECE) &&
			(content[ GET_POSITION( column, row - 2) ] == NO_PIECE)) {
			
			Move move = Move(
					GET_POSITION(column, row), 
					GET_POSITION(column, row - 2), 
					NO_PIECE, 
					piece, 
					NO_PIECE,
					hasMoved);
									
			move.execute(*this);
			
			if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
				moves.push_back(move);
			}
								
			move.unexecute(*this);
		}
		
		if ((row - 1) >= 0) { //single advances							
			ColoredPiece special = NO_PIECE;
			
			if ((row - 1) == 0) { //promotion
				special = piece;
				piece = QUEEN_BLACK; //could be changed to let user choose
			}
			
			//left capture
			if ((column > 0) && (GET_PIECE_COLOR(content[GET_POSITION(column - 1, row - 1)]) == WHITE)) {
				Move move =	Move(
						GET_POSITION(column, row), 
						GET_POSITION(column - 1, row - 1), 
						special, 
						piece, 
						content[GET_POSITION(column-1, row - 1)],
						hasMoved);						
				
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}		
						
			//right capture	
			if ((column < (COLUMN_COUNT - 1)) && (GET_PIECE_COLOR( content[ GET_POSITION( column + 1 , row - 1) ] ) == WHITE)) {
				
				Move move = Move(
						GET_POSITION(column, row), 
						GET_POSITION(column + 1, row - 1), 
						special, 
						piece, 
						content[GET_POSITION(column + 1, row - 1)],
						hasMoved);
										
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}
			
			//normal advance
			if (content[GET_POSITION(column, row - 1)] == NO_PIECE) {
				
				Move move = Move(
						GET_POSITION(column, row), 
						GET_POSITION(column, row - 1), 
						special, 
						piece, 
						NO_PIECE,
						hasMoved);						
										
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}
		}
	}	
}
	
	
/**
*  x x
* x   x
*   0
* x   x
*  x x
*/	
void Board::getKnightMovesFrom(int position, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	int color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[16] = {1,2, 2,1, 2,-1, 1,-2, -1,-2, -2,-1, -2,1, -1,2};
	int to;
	ColoredPiece piece;
	
	for (int i = 0; i < 16; i += 2) {
		to = GET_POSITION(column + availableMoves[i], row + availableMoves[i+1]);			
		
		if (IS_VALID_POSITION(to)) {
			piece = content[to];
			
			if ((piece == NO_PIECE) || (GET_PIECE_COLOR(piece) != color)) {
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved);	
				
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}
		}
	}		
}

/**
* x x
*  0
* x x
*/	
void Board::getBishopMovesFrom(int position, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	int color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[8] = {1,1, 1,-1, -1,-1, -1,1};
	int to;
	bool blocked;
	ColoredPiece piece;
	
	for (int i = 0; i < 8; i += 2) {
		blocked = false;
		int x = column;
		int y = row;
		
		while (!blocked) {
			x += availableMoves[i];
			y += availableMoves[i+1];
			
			to = GET_POSITION(x, y);						
			if (!IS_VALID_POSITION(to)) {
				break;
			}
			
			piece = content[to];
		
			if ((piece == NO_PIECE) || (GET_PIECE_COLOR(piece) != color)) {
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved);							
				
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}
			
			if (piece != NO_PIECE) {
				blocked = true;
			}
		}
	}		
}

/**
*  x
* x0x
*  x
*/	
void Board::getRookMovesFrom(int position, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	int color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[8] = {0,1, 1,0, 0,-1, -1,0};
	int to;
	bool blocked;
	ColoredPiece piece;
	
	for (int i = 0; i < 8; i += 2) {
		blocked = false;
		int x = column;
		int y = row;
		
		while (!blocked) {
			x += availableMoves[i];
			y += availableMoves[i+1];
			
			to = GET_POSITION(x, y);						
			if (!IS_VALID_POSITION(to)) {
				break;
			}
			
			piece = content[to];
		
			if ((piece == NO_PIECE) || (GET_PIECE_COLOR(piece) != color)) {
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved);							
				
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}
			
			if (piece != NO_PIECE) {
				blocked = true;
			}
		}
	}		
}

/**
* xxx
* x0x
* xxx
*/	
void Board::getQueenMovesFrom(int position, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	int color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[16] = {1,1, 1,-1, -1,-1, -1,1, 0,1, 1,0, 0,-1, -1,0};
	int to;
	bool blocked;
	ColoredPiece piece;
	
	for (int i = 0; i < 16; i += 2) {
		blocked = false;
		int x = column;
		int y = row;
		
		while (!blocked) {
			x += availableMoves[i];
			y += availableMoves[i+1];
			
			to = GET_POSITION(x, y);						
			if (!IS_VALID_POSITION(to)) {
				break;
			}
			
			piece = content[to];
		
			if ((piece == NO_PIECE) || (GET_PIECE_COLOR(piece) != color)) {
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved);
				
				move.execute(*this);
				
				if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
					moves.push_back(move);
				}
									
				move.unexecute(*this);
			}
			
			if (piece != NO_PIECE) {
				blocked = true;
			}
		}
	}		
}

/**
* xxx
* x0x
* xxx
* this function does not check if the king can be taken!
*/	
void Board::getKingMovesFrom(int position, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	int color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[16] = {1,1, 1,-1, -1,-1, -1,1, 0,1, 1,0, 0,-1, -1,0};
	int to;
	ColoredPiece piece;
	
	//castling	
	if ((!WHITE_KING_MOVED) && (position == E1) && (content[position] == KING_WHITE)) { 	
						
		if (NO_PIECE == getThreatOf(E1, color)) {
					
			//kingside
			if ((!WHITE_ROOKH_MOVED) &&
				(content[F1] == NO_PIECE) &&
				(content[G1] == NO_PIECE) &&
				(content[H1] == ROOK_WHITE)) {
				
				if ((NO_PIECE == getThreatOf(F1, color)) &&
					(NO_PIECE == getThreatOf(G1, color))) {
					
					moves.push_back(Move(E1, G1, KING_WHITE, KING_WHITE, NO_PIECE, hasMoved));
				}
			}
			
			//queenside
			if ((!WHITE_ROOKA_MOVED) &&
				(content[A1] == ROOK_WHITE) &&
				(content[B1] == NO_PIECE) &&
				(content[C1] == NO_PIECE) &&
				(content[D1] == NO_PIECE)) {
				
				if ((NO_PIECE == getThreatOf(C1, color)) &&
					(NO_PIECE == getThreatOf(D1, color))) {
					
					moves.push_back(Move(E1, C1, KING_WHITE, KING_WHITE, NO_PIECE, hasMoved));
				}
			}
		}
	}	
	
	if ((!BLACK_KING_MOVED) && (position == E8) && (content[position] == KING_BLACK)) {
		
		if (NO_PIECE == getThreatOf(position, color)) {
			//kingside
			if ((!BLACK_ROOKH_MOVED) &&
				(content[F8] == NO_PIECE) &&
				(content[G8] == NO_PIECE) &&
				(content[H8] == ROOK_BLACK)) {
				
				if ((NO_PIECE == getThreatOf(F8, color)) &&
					(NO_PIECE == getThreatOf(G8, color))) {
				
					moves.push_back(Move(E8, G8, KING_BLACK, KING_BLACK, NO_PIECE, hasMoved));
				}
			}
			
			//queenside
			if ((!BLACK_ROOKA_MOVED) &&
				(content[A8] == ROOK_BLACK) &&
				(content[B8] == NO_PIECE) &&
				(content[C8] == NO_PIECE) &&
				(content[D8] == NO_PIECE)) {
				
				if ((NO_PIECE == getThreatOf(D8, color)) &&
					(NO_PIECE == getThreatOf(C8, color))) {
								
					moves.push_back(Move(E8, C8, KING_BLACK, KING_BLACK, NO_PIECE, hasMoved));					
				}
			}
		}
	}
			
	//normal moves
	for (int i = 0; i < 16; i += 2) {
		to = GET_POSITION(column + availableMoves[i], row + availableMoves[i+1]);			
		if (IS_VALID_POSITION(to)) {
			piece = content[to];			
		
			if ((piece == NO_PIECE) || (GET_PIECE_COLOR(piece) != color)) {				
				if (NO_PIECE == getThreatOf(to, color)) {
					Move move = Move(
								position, 
								to, 
								NO_PIECE, 
								content[position], 
								piece,
								hasMoved);
								
					move.execute(*this);
					
					if (NO_PIECE == getThreatOf(getPositionOfKing(color),color)) {
						moves.push_back(move);
					}
										
					move.unexecute(*this);
				}
			}	
		}		
	}		
}

void Board::resetBoard() {		
	for (int i = 0; i < CONTENT_SIZE; ++i)
	{
		content[i] = NO_PIECE;
	}	 

	//BLACK VIPS
	content[A8] = ROOK_BLACK;
	content[B8] = KNIGHT_BLACK;
	content[C8] = BISHOP_BLACK;
	content[D8] = QUEEN_BLACK;
	content[E8] = KING_BLACK;
	content[F8] = BISHOP_BLACK;
	content[G8] = KNIGHT_BLACK;
	content[H8] = ROOK_BLACK;
	//BLACK PAWNS
	content[A7] = PAWN_BLACK;
	content[B7] = PAWN_BLACK;
	content[C7] = PAWN_BLACK;
	content[D7] = PAWN_BLACK;
	content[E7] = PAWN_BLACK;
	content[F7] = PAWN_BLACK;
	content[G7] = PAWN_BLACK;
	content[H7] = PAWN_BLACK;

	//WHITE PAWNS
	content[A2] = PAWN_WHITE;
	content[B2] = PAWN_WHITE;
	content[C2] = PAWN_WHITE;
	content[D2] = PAWN_WHITE;
	content[E2] = PAWN_WHITE;
	content[F2] = PAWN_WHITE;
	content[G2] = PAWN_WHITE;
	content[H2] = PAWN_WHITE;
	//WHITE VIPS
	content[A1] = ROOK_WHITE;
	content[B1] = KNIGHT_WHITE;
	content[C1] = BISHOP_WHITE;
	content[D1] = QUEEN_WHITE;
	content[E1] = KING_WHITE;
	content[F1] = BISHOP_WHITE;
	content[G1] = KNIGHT_WHITE;
	content[H1] = ROOK_WHITE;
	
	kingPosition[BLACK_INDEX] = E8;	
	kingPosition[WHITE_INDEX] = E1;
	hasMoved = 0;	
	
	materialValue[WHITE_INDEX] = PIECE_VALUE[QUEEN] + (PIECE_VALUE[ROOK] * 2) + (PIECE_VALUE[BISHOP] * 2) + (PIECE_VALUE[KNIGHT] * 2) + (PIECE_VALUE[PAWN] * 8);
	materialValue[BLACK_INDEX] = materialValue[WHITE_INDEX];
}

bool Board::hasKingMoved(int color) {
	return (color == WHITE) ? WHITE_KING_MOVED : BLACK_KING_MOVED;
}

/*int Board::getEnPassantPosition() {
	return enPassantPosition;
}

void Board::setEnPassantPosition(int position) {
	enPassantPosition = position;
}	*/

/**
 * Returns the smallest piece threatening the selected position
 */
int Board::getThreatOf(int position, int color) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);	
	static int availableMoves[32] = 
			   {1,1, -1,1, 1,-1, -1,-1, 0,1,   1,0,   0,-1, -1,0, 
				1,2, 2,1,  2,-1,  1,-2, -1,-2, -2,-1, -2,1, -1,2};
			/*	EN   WN    ES	 WS	    N	   E	  S     W
			*/
	int to;
	bool blocked;
	ColoredPiece piece;
	int threat = NO_PIECE;
	int x, y, distance;
	
	for (int i = 0; i < 16; i += 2) {
		blocked = false;
		x = column;
		y = row;
		distance = 0;
		
		while (!blocked) {
			x += availableMoves[i];
			y += availableMoves[i+1];
			distance++;
			
			to = GET_POSITION(x, y);						
			if (!IS_VALID_POSITION(to)) {
				break;
			}
			
			piece = content[to];
		
			if ((piece != NO_PIECE) && (GET_PIECE_COLOR(piece) != color)) {
				
				if ((piece > threat)||(threat == NO_PIECE)) {
				
					if ((0 <= i)&&(i < 8)) {
					
						switch (GET_PIECE_TYPE(piece)) {
							case PAWN:
								if (distance == 1) {								
									if (color == BLACK) { //threatening piece must be black							
										if (i >= 4) {
											return piece;
										}		
																
									} else {
									
										if (i < 4) {
											return piece;
										}
									}
								}
								break;
							case QUEEN:
							case BISHOP:		
								threat = piece;
								break;								
							case KING:
								if (distance == 1) {									
									threat = piece;
								}
								break;
						}	
					} else {
					
						switch (GET_PIECE_TYPE(piece)) {							
							case QUEEN:
							case ROOK:		
								threat = piece;
								break;
							case KING:
								if (distance == 1) {									
									threat = piece;
								}
								break;
						}
					}										
				}
			}
			
			if (piece != NO_PIECE) {
				blocked = true;
			}
		}		
	}
	
	if ((threat != NO_PIECE) && (GET_PIECE_TYPE(threat) > KNIGHT)) {
		return threat;
	}
		
	for (int i = 16; i < 32; i += 2) {
		to = GET_POSITION(column + availableMoves[i], row + availableMoves[i+1]);			
		
		if (IS_VALID_POSITION(to)) {
			piece = content[to];
			
			if ((piece != NO_PIECE) && (GET_PIECE_COLOR(piece) != color) && (GET_PIECE_TYPE(piece) == KNIGHT)) {
				return piece;
			}			
		}
	}	
	
	return threat;	
}

void Board::setPositionOfKing(int position, int color) {
	kingPosition[(color == WHITE)] = position;
}

int Board::getPositionOfKing(int color) {	
	return kingPosition[(color == WHITE)];
}

bool Board::isStalemate(int color) {
	return false;
}

bool Board::isCheck(int color) {	
	if (NO_PIECE != getThreatOf(kingPosition[(color == WHITE)], color)) {
		return true;
	}
	return false;
}

bool Board::isCheckmate(int color) {
	throw "";
	return false;
}


int Board::getMaterialValue(int color) {
	return materialValue[(color == WHITE)];
}

bool Board::hasPerformedCastling(int color) {
	throw "";	
	return false;
}

#endif