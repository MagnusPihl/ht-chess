#ifndef BOARD_CPP
#define BOARD_CPP

#include "Board.h"


Board::Board() : content(std::vector<ColoredPiece>(CONTENT_SIZE)), moveList(std::vector<Move>()), killerMoveList(std::vector<Move>())
{
	for(int i=0; i<128; i++)
	{
		for(int j=0; j<128; j++)
		{
			hashKeyComponents[i][j] = rand();
			hashLockComponents[i][j] = rand();
		}
	}
	resetBoard();
}


/*****************************************************************************/

Board::Board(const Board& rhs) : content(std::vector<ColoredPiece>(CONTENT_SIZE)), moveList(std::vector<Move>()), killerMoveList(std::vector<Move>())
{
	for(int i=0; i<128; i++)
	{
		for(int j=0; j<128; j++)
		{
			hashKeyComponents[i][j] = rand();
			hashLockComponents[i][j] = rand();
		}
	}
	
	//hashToPieceMap[0] = PAWN_WHITE;		hashToPieceMap[2] = ROOK_WHITE;		hashToPieceMap[2] = KNIGHT_WHITE;
	//hashToPieceMap[3] = BISHOP_WHITE;	hashToPieceMap[4] = QUEEN_WHITE;	hashToPieceMap[5] = QUEEN_WHITE;
	//hashToPieceMap[6] = PAWN_BLACK;		hashToPieceMap[7] = ROOK_BLACK;		hashToPieceMap[8] = KNIGHT_BLACK;
	//hashToPieceMap[9] = BISHOP_BLACK;	hashToPieceMap[10] = QUEEN_BLACK;	hashToPieceMap[11] = QUEEN_BLACK;
	//hashToPositionMap[0] =  A1;	hashToPositionMap[1] =  A2;	hashToPositionMap[2] =  A3;	hashToPositionMap[3] =  A4;
	//hashToPositionMap[4] =  A5;	hashToPositionMap[5] =  A6;	hashToPositionMap[6] =  A7;	hashToPositionMap[7] =  A8;
	//hashToPositionMap[8] =  B1;	hashToPositionMap[9] =  B2;	hashToPositionMap[10] = B3;	hashToPositionMap[11] = B4;
	//hashToPositionMap[12] = B5;	hashToPositionMap[13] = B6;	hashToPositionMap[14] = B7;	hashToPositionMap[15] = B8;
	//hashToPositionMap[16] = C1;	hashToPositionMap[17] = C2;	hashToPositionMap[18] = C3;	hashToPositionMap[19] = C4;
	//hashToPositionMap[20] = C5;	hashToPositionMap[21] = C6;	hashToPositionMap[22] = C7;	hashToPositionMap[23] = C8;
	//hashToPositionMap[24] = D1;	hashToPositionMap[25] = D2;	hashToPositionMap[26] = D3;	hashToPositionMap[27] = D4;
	//hashToPositionMap[28] = D5;	hashToPositionMap[29] = D6;	hashToPositionMap[30] = D7;	hashToPositionMap[31] = D8;
	//hashToPositionMap[32] = E1;	hashToPositionMap[33] = E2;	hashToPositionMap[34] = E3;	hashToPositionMap[35] = E4;
	//hashToPositionMap[36] = E5;	hashToPositionMap[37] = E6;	hashToPositionMap[38] = E7;	hashToPositionMap[39] = E8;
	//hashToPositionMap[40] = F1;	hashToPositionMap[41] = F2;	hashToPositionMap[42] = F3;	hashToPositionMap[43] = F4;
	//hashToPositionMap[44] = F5;	hashToPositionMap[45] = F6;	hashToPositionMap[46] = F7;	hashToPositionMap[47] = F8;
	//hashToPositionMap[48] = G1;	hashToPositionMap[49] = G2;	hashToPositionMap[50] = G3;	hashToPositionMap[51] = G4;
	//hashToPositionMap[52] = G5;	hashToPositionMap[53] = G6;	hashToPositionMap[54] = G7;	hashToPositionMap[55] = G8;
	//hashToPositionMap[56] = H1;	hashToPositionMap[57] = H2;	hashToPositionMap[58] = H3;	hashToPositionMap[59] = H4;
	//hashToPositionMap[60] = H5;	hashToPositionMap[61] = H6;	hashToPositionMap[62] = H7;	hashToPositionMap[63] = H8;

	for (int i = 0; i < CONTENT_SIZE; ++i)
	{
		content[i] = rhs.content[i];		
	}

	enPassantPosition = rhs.enPassantPosition;
	reversableMoves = rhs.reversableMoves;
	
	for (int i = 0; i < 2; i++) {
		hasMoved[i] = rhs.hasMoved[i];
		kingPosition[i] = rhs.kingPosition[i];	
		materialValue[i] = rhs.materialValue[i];			
		hasCastled[i] = rhs.hasCastled[i];
	}	
}


/*****************************************************************************/

Board& Board::operator= (Board& rhs) {
	if (this != &rhs)
	{
		for (int i = 0; i < CONTENT_SIZE; ++i)
		{
			content[i] = rhs.content[i];
		}
			
		enPassantPosition = rhs.enPassantPosition;
		reversableMoves = rhs.reversableMoves;
		
		for (int i = 0; i < 2; i++) {
		hasMoved[i] = rhs.hasMoved[i];
			kingPosition[i] = rhs.kingPosition[i];	
			materialValue[i] = rhs.materialValue[i];			
			hasCastled[i] = rhs.hasCastled[i];
		}		
	}
	return *this;
}


/*****************************************************************************/

ColoredPiece & Board::operator[](Position position)
{
    return content[position];
}


/*****************************************************************************/

Board::~Board() {
	//delete stuff
}


/*****************************************************************************/

void Board::testAndAddMove(Color color, Move &move, std::vector<Move> &moves) {
	move.execute(*this);
		
	if (!isCheck(color)) {
		moves.push_back(move);
	}
	
	move.unexecute(*this);
}


/*****************************************************************************/

ColoredPiece Board::getItemAt(Position position) 
{
	#ifdef CHECK_OVERFLOW
		if (!IS_VALID_POSITION(position)) 
		{
			throw "Index out of bounds: " + position;
		}
	#endif
	
	return content[position];
}

/*****************************************************************************/

vector<ColoredPiece> & Board::getContent() {
	return content;
}


/*****************************************************************************/

void Board::setPositionOfKing(Position position, Color color) {
	kingPosition[(color == WHITE)] = position;
}


/*****************************************************************************/

Position Board::getPositionOfKing(Color color) {	
	return kingPosition[(color == WHITE)];
}


/*****************************************************************************/

bool Board::isStalemate(Color color) {
	if (reversableMoves >= MAX_TURNS) {
		return true;
	}
	if ((materialValue[BLACK_INDEX] == 0) && (materialValue[WHITE_INDEX] == 0)) {
		return true;
	}
	if (!isCheck(color)) {
		moveList.clear();	
		killerMoveList.clear();	
		MoveGenerator::generateMoves(*this, color, killerMoveList, moveList);		
		if (moveList.empty() && killerMoveList.empty()) {
			return true;
		}
	}
	return false;
}


/*****************************************************************************/

bool Board::isCheck(Color color) {	
	if (NO_PIECE != getThreatOf(kingPosition[(color == WHITE)], color)) {
		return true;
	}
	return false;
}


/*****************************************************************************/

bool Board::isCheckmate(Color color) {
	if (isCheck(color)) {
		moveList.clear();			
		killerMoveList.clear();	
		MoveGenerator::generateMoves(*this, color, killerMoveList, moveList);		
		if (moveList.empty() && killerMoveList.empty()) {
			return true;
		}
	}
	return false;
}


/*****************************************************************************/

int Board::isCheckmate() {
	if (isCheckmate(WHITE)) {
		return WHITE;
	}
	if (isCheckmate(BLACK)) {
		return BLACK;
	}
	return 0;
}


/*****************************************************************************/

int Board::isStalemate() {
	if (isStalemate(WHITE)) {
		return WHITE;
	}
	if (isStalemate(BLACK)) {
		return BLACK;
	}
	return 0;
}


/*****************************************************************************/

int Board::getMaterialValue(Color color) {
	return materialValue[(color == WHITE)];
}


/*****************************************************************************/

bool Board::hasPerformedCastling(Color color) {	
	return hasCastled[(color == WHITE)];
}


/*****************************************************************************/

bool Board::hasKingMoved(Color color) {
	return HAS_KING_MOVED(*this, color == WHITE);
}


/*****************************************************************************/

void Board::getMovesFromPosition(Position position, vector<Move> &killerMoves, vector<Move> &moves) {
	#ifdef CHECK_OVERFLOW
		if (!IS_VALID_POSITION(position)) 
		{
			throw "Index out of bounds: " + position;
		}					
	#endif
	
	ColoredPiece piece = content[position];
	
	switch (GET_PIECE_TYPE(piece)) {
		case PAWN: return getPawnMovesFrom(position, killerMoves, moves);
		case KNIGHT: return getKnightMovesFrom(position, killerMoves, moves);
		case BISHOP: return getBishopMovesFrom(position, killerMoves, moves);
		case ROOK: return getRookMovesFrom(position, killerMoves, moves);
		case QUEEN: return getQueenMovesFrom(position, killerMoves, moves);
		case KING: return getKingMovesFrom(position, killerMoves, moves);
	}
}	


/*****************************************************************************/

void Board::getPawnMovesFrom(Position position, vector<Move> &killerMoves, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	Color color = GET_PIECE_COLOR(content[position]);
	ColoredPiece piece = content[position];
	int colorIndex = (color == WHITE);
	int direction = PAWN_DIRECTION[colorIndex];
	int doubleDirection = PAWN_DIRECTION[colorIndex]*2;
	
	//en-passant	//changed
	if ((row == PAWN_ENPASSANT_CONTENT_ROW[colorIndex]) && (GET_ROW(enPassantPosition) == PAWN_ENPASSANT_TAKE_ROW[colorIndex])) { //en-passant
		int x = GET_REAL_COLUMN(enPassantPosition);
		
		if (((column + 1) == x) || ((column - 1) == x)) {
		
			Move move = Move(
				position, 
				enPassantPosition, 
				piece, 
				piece, 
				GET_COLORED_PIECE(PAWN, GET_OPPOSITE_COLOR(color)),
				hasMoved[colorIndex],
				enPassantPosition,
				reversableMoves);
				
			testAndAddMove(color, move, killerMoves);
		}
	}

	ColoredPiece special = NO_PIECE;
	
	//promotion
	if ((row + direction) == CASTLING_ROW[colorIndex ^ 0x01]) {
		special = piece;
		piece = GET_COLORED_PIECE(QUEEN, color); //could be changed to let user choose					
	}
	
	//left capture
	if ((column > 0) && (GET_PIECE_COLOR(content[GET_POSITION(column - 1, row + direction)]) == GET_OPPOSITE_COLOR(color))) {
		Move move = Move(
				position, 
				GET_POSITION(column - 1, row + direction), 
				special, 
				piece, 
				content[GET_POSITION(column - 1, row + direction)],
				hasMoved[colorIndex],
				enPassantPosition,
				reversableMoves);
														
		testAndAddMove(color, move, killerMoves);
	}		
				
	//right capture	
	if ((column < (COLUMN_COUNT - 1)) && (GET_PIECE_COLOR(content[ GET_POSITION( column + 1 , row + direction) ]) == GET_OPPOSITE_COLOR(color))) {
		
		Move move = Move(
				position, 
				GET_POSITION(column + 1, row + direction), 
				special, 
				piece, 
				content[GET_POSITION(column + 1, row + direction)],
				hasMoved[colorIndex],
				enPassantPosition,
				reversableMoves);
														
		testAndAddMove(color, move, killerMoves);
	}
	
	//normal advance
	if (content[GET_POSITION(column, row + direction)] == NO_PIECE) {
		
		 Move move = Move(
				position, 
				GET_POSITION(column, row + direction), 
				special, 
				piece, 
				NO_PIECE,
				hasMoved[colorIndex],
				enPassantPosition,
				reversableMoves);												
		
		testAndAddMove(color, move, moves);
		
		if ((row == PAWN_START_ROW[colorIndex]) && //double advance
			(content[ GET_POSITION( column, row + doubleDirection)] == NO_PIECE)) {
			
			Move move = Move(
					position, 
					GET_POSITION(column, row + doubleDirection), 
					NO_PIECE, 
					piece, 
					NO_PIECE,
					hasMoved[colorIndex],
					enPassantPosition,
					reversableMoves);
									
			testAndAddMove(color, move, moves);
		}	
	}	
}
	

/*****************************************************************************/		

void Board::getKnightMovesFrom(Position position, vector<Move> &killerMoves, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	Color color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[16] = {1,2, 2,1, 2,-1, 1,-2, -1,-2, -2,-1, -2,1, -1,2};
	Position to;
	ColoredPiece piece;
	int colorIndex = (color == WHITE); 
	
	for (int i = 0; i < 16; i += 2) {
		to = GET_POSITION(column + availableMoves[i], row + availableMoves[i+1]);			
		
		if (IS_VALID_POSITION(to)) {
			piece = content[to];
			
			if (GET_PIECE_COLOR(piece) != color) {
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved[colorIndex],
							enPassantPosition,
							reversableMoves);	
				
				if (piece != NO_PIECE) {
					testAndAddMove(color, move, killerMoves);
				} else {
					testAndAddMove(color, move, moves);
				}
			}
		}
	}		
}


/*****************************************************************************/

void Board::getBishopMovesFrom(Position position, vector<Move> &killerMoves, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	Color color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[8] = {1,1, 1,-1, -1,-1, -1,1};
	Position to;
	bool blocked;
	ColoredPiece piece;
	int colorIndex = (color == WHITE); 
	
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
		
			if (GET_PIECE_COLOR(piece) != color) {
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved[colorIndex],
							enPassantPosition,
							reversableMoves);							
					
				if (piece != NO_PIECE) {
					testAndAddMove(color, move, killerMoves);
				} else {
					testAndAddMove(color, move, moves);
				}
			}
			
			if (piece != NO_PIECE) {
				blocked = true;
			}
		}
	}		
}


/*****************************************************************************/

void Board::getRookMovesFrom(Position position, vector<Move> &killerMoves, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	Color color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[8] = {0,1, 1,0, 0,-1, -1,0};
	Position to;
	bool blocked;
	ColoredPiece piece;	
	int colorIndex = (color == WHITE); 
	
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
		
			if (GET_PIECE_COLOR(piece) != color) {
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved[colorIndex],
							enPassantPosition,
							reversableMoves);							
				
				if (piece != NO_PIECE) {
					testAndAddMove(color, move, killerMoves);
				} else {
					testAndAddMove(color, move, moves);
				}
			}
			
			if (piece != NO_PIECE) {
				blocked = true;
			}
		}
	}		
}


/*****************************************************************************/

void Board::getQueenMovesFrom(Position position, vector<Move> &killerMoves, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	Color color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[16] = {1,1, 1,-1, -1,-1, -1,1, 0,1, 1,0, 0,-1, -1,0};
	Position to;
	bool blocked;
	ColoredPiece piece;	
	int colorIndex = (color == WHITE); 
	
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
		
			if (GET_PIECE_COLOR(piece) != color) {
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved[colorIndex],
							enPassantPosition,
							reversableMoves);
				
				if (piece != NO_PIECE) {
					testAndAddMove(color, move, killerMoves);
				} else {
					testAndAddMove(color, move, moves);
				}
			}
			
			if (piece != NO_PIECE) {
				blocked = true;
			}
		}
	}		
}


/*****************************************************************************/
	
void Board::getKingMovesFrom(Position position, vector<Move> &killerMoves, vector<Move> &moves) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);
	Color color = GET_PIECE_COLOR(content[position]);
	static int availableMoves[16] = {1,1, 1,-1, -1,-1, -1,1, 0,1, 1,0, 0,-1, -1,0};
	Position to;
	ColoredPiece piece = content[position];
	int colorIndex = (color == WHITE); 
		
	//castling	
	if ((!HAS_KING_MOVED(*this, colorIndex)) && 		
		(NO_PIECE == getThreatOf(CASTLING_COLUMN_E[colorIndex], color))) {
					
		//kingside
		if ((!HAS_ROOK_H_MOVED(*this, colorIndex)) &&
			(content[CASTLING_COLUMN_F[colorIndex]] == NO_PIECE) &&
			(content[CASTLING_COLUMN_H[colorIndex]] == NO_PIECE) &&
			(NO_PIECE == getThreatOf(CASTLING_COLUMN_F[colorIndex], color)) &&
			(NO_PIECE == getThreatOf(CASTLING_COLUMN_G[colorIndex], color))) {
				
			moves.push_back(Move(
				position, 
				CASTLING_COLUMN_G[colorIndex], 
				piece, 
				piece, 
				NO_PIECE, 
				hasMoved[colorIndex], 
				enPassantPosition, 
				reversableMoves));
				
		//queenside
		} else if ((!HAS_ROOK_A_MOVED(*this, colorIndex)) && 			
			(content[CASTLING_COLUMN_B[colorIndex]] == NO_PIECE) &&
			(content[CASTLING_COLUMN_C[colorIndex]] == NO_PIECE) &&
			(content[CASTLING_COLUMN_D[colorIndex]] == NO_PIECE) &&
			(NO_PIECE == getThreatOf(CASTLING_COLUMN_C[colorIndex], color)) &&
			(NO_PIECE == getThreatOf(CASTLING_COLUMN_D[colorIndex], color))) {
				
			moves.push_back(Move(
				position,
				CASTLING_COLUMN_C[colorIndex], 
				piece, 
				piece, 
				NO_PIECE, 
				hasMoved[colorIndex], 
				enPassantPosition, 
				reversableMoves));
		}
	}			
			
	//normal moves
	for (int i = 0; i < 16; i += 2) {
		to = GET_POSITION(column + availableMoves[i], row + availableMoves[i+1]);	
				
		if (IS_VALID_POSITION(to)) {
			piece = content[to];			
		
			if (GET_PIECE_COLOR(piece) != color) {				
				
				Move move = Move(
							position, 
							to, 
							NO_PIECE, 
							content[position], 
							piece,
							hasMoved[colorIndex], 
							enPassantPosition,
							reversableMoves);
							
				if (piece != NO_PIECE) {
					testAndAddMove(color, move, killerMoves);
				} else {
					testAndAddMove(color, move, moves);
				}
			}	
		}		
	}		
}


/*****************************************************************************/

ColoredPiece Board::getThreatOf(Position position, Color color) {
	int row = GET_ROW(position);
	int column = GET_REAL_COLUMN(position);	
	static int availableMoves[32] = 
			   {1,1, -1,1, 1,-1, -1,-1, 0,1,   1,0,   0,-1, -1,0, 
				1,2, 2,1,  2,-1,  1,-2, -1,-2, -2,-1, -2,1, -1,2};
			/*	EN   WN    ES	 WS	    N	   E	  S     W
			*/
	Position to;
	bool blocked;
	ColoredPiece piece;
	ColoredPiece threat = NO_PIECE;
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
		
			if ((GET_PIECE_COLOR(piece) != color) && ((piece > threat) || (threat == NO_PIECE))) {
				
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
			
			if ((GET_PIECE_COLOR(piece) != color) && (GET_PIECE_TYPE(piece) == KNIGHT)) {
				return piece;
			}			
		}
	}	
	
	return threat;	
}

/*****************************************************************************/

int Board::getHashKey()
{
	int hash = 0;
	Position pos;
	for(int row=0; row<8; row++)
	{
		for(int col=0; col<8; col++)
		{
			pos = GET_POSITION(col, row);
			if(content[pos] != NO_PIECE)
				hash ^= hashKeyComponents[content[pos]][pos];
		}
	}
	return hash;
}

/*****************************************************************************/

int Board::getHashLock()
{
	int hash = 0;
	Position pos;
	for(int row=0; row<8; row++)
	{
		for(int col=0; col<8; col++)
		{
			pos = GET_POSITION(col, row);
			if(content[pos] != NO_PIECE)
				hash ^= hashLockComponents[content[pos]][pos];
		}
	}
	return hash;
}

/*****************************************************************************/

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
	hasMoved[BLACK_INDEX] = 0;	
	hasMoved[WHITE_INDEX] = 0;	
	
	materialValue[WHITE_INDEX] = PIECE_VALUE[QUEEN] + (PIECE_VALUE[ROOK] * 2) + (PIECE_VALUE[BISHOP] * 2) + (PIECE_VALUE[KNIGHT] * 2) + (PIECE_VALUE[PAWN] * 8);
	materialValue[BLACK_INDEX] = materialValue[WHITE_INDEX];
	
	reversableMoves = 0;
}

#endif