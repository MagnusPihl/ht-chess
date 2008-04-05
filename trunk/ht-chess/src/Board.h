#ifndef BOARD_H
#define BOARD_H

#include "Piece.h"

#define CHECK_OVERFLOW true
#define POSITION_OVERFLOW 0x88

class Board
{
private:
	Piece* content;
public:
	static const int BOARD_SIZE = 256;

	Board() : content(new Piece[BOARD_SIZE]) 
	{
		for (int i = 0; i < BOARD_SIZE; ++i)	//Is this supposed to be less than check? Nothing was written.
		{
			content[i] = NONE;
		}	
	}

	/**
	/* Should we do boundary check here?
	/**/
	Piece getItemAt(int position) 
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
};

#endif