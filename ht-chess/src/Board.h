#include "Pieces.h"

public class Board
{
	public static const int BOARD_SIZE = 256;

	private Piece* content;

	public Board() : content(new Piece[BOARD_SIZE])
	{
		for (int i = 0; i BOARD_SIZE; ++i)
		{
			content[i] = NONE;
		}	
	}
};