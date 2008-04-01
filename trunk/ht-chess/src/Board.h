#ifndef BOARD_H
#define BOARD_H

#include "Pieces.h"

#define CHECK_OVERFLOW true
#define POSITION_OVERFLOW 0x88

public class Board {

	public static const int BOARD_SIZE = 256;

	private Piece* content;

	public Board() : content(new Piece[BOARD_SIZE]) 
	{
		for (int i = 0; i BOARD_SIZE; ++i) 
		{
			content[i] = NONE;
		}	
	}

	/**
	/* Should we do boundary check her?
	/**/
	public Piece getItemAt(int position) 
	{
#ifdef CHECK_OVERFLOW
		if (position & POSITION_OVERFLOW != 0) 
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