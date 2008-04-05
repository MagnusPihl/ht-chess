#ifndef MOVE_H
#define MOVE_H

#include "Piece.h"
#include "Board.h"

class Move
{
private:
	int to;
	int from;
	Piece special;
	Piece type;
	Piece content;

public:
	Move() {}
	Move(int _from, int _to, Piece _special, Piece _type, Piece _content) :
		from(_from), to(_to), special(_special), type(_type), content(_content)
	{

	}

	//
	void execute(Board board)
	{

	}

	void unexecute(Board board)
	{

	}

	//accessors
	int getOldPosition()
	{
		return from;
	}

	int getNewPosition()
	{
		return to;
	}

	Piece getSpecial()
	{
		return special;
	}

	Piece getPieceType()
	{
		return type;
	}

	Piece getContent()
	{
		return content;
	}
};

#endif