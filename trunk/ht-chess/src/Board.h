#ifndef BOARD_H
#define BOARD_H

#include "Piece.h"
#include "Position.h"

#define CHECK_OVERFLOW true
#define BOARD_SIZE 256

class Board
{
private:
	ColoredPiece* content;

public:

	friend class BoardRenderer;

	Board() : content(new ColoredPiece[BOARD_SIZE]) 
	{
		for (int i = 0; i < BOARD_SIZE; ++i)
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
		content[D1] = KING_WHITE;
		content[E1] = QUEEN_WHITE;
		content[F1] = BISHOP_WHITE;
		content[G1] = KNIGHT_WHITE;
		content[H1] = ROOK_WHITE;		
	}
	
	Board(const Board& rhs) : content(new ColoredPiece[BOARD_SIZE])
	{
		for (int i = 0; i < BOARD_SIZE; ++i)
		{
			content[i] = rhs.content[i];
		}
	}

	Board& operator= (Board& rhs) {
		if (this != &rhs)
		{
			for (int i = 0; i < BOARD_SIZE; ++i)
			{
				content[i] = rhs.content[i];
			}
		}
		return *this;
	}

	~Board() {
		delete [] content;
	}

	/**
	/* Should we do boundary check here?
	/**/
	ColoredPiece getItemAt(int position) 
	{
	#ifdef CHECK_OVERFLOW
		if ((position & POSITION_OVERFLOW) != 0) 
		{
			throw "Index out of bounds: " + position;
		} 
		else 
		{
			return content[position];
		}
	#else
		return content[position];
	#endif
	}

	ColoredPiece* getContent() {
		return content;
	}
};

#endif