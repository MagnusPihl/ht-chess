#ifndef BOARD_H
#define BOARD_H

#include "Piece.h"
#include "Position.h"

#define CHECK_OVERFLOW true
#define BOARD_SIZE 256

class Board
{
private:
	Piece* content;

public:

	friend class BoardRenderer;

	Board() : content(new Piece[BOARD_SIZE]) 
	{
		for (int i = 0; i < BOARD_SIZE; ++i)
		{
			content[i] = NONE;
		}	
	}
	
	Board(const Board& rhs) : content(new Piece[BOARD_SIZE])
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