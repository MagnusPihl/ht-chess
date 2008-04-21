#ifndef MOVE_H
#define MOVE_H
//#define TEST_MOVE_VALIDITY

#include "Piece.h"
#include "Board.h"

class Board;

class Move
{
private:
	/**
	* To and from defines the postion the piece moved from and to
	*/	
	int to;
	int from;

	/**
	* If special is a pawn the move is either en-passant or promotion
	*	If the to position is the row the row before the row of pawns the move is en-passant 
	*	If the row to row is the last row then the move is an promotion
	* If special is a king then the move is castling 
	*	the type of castling is determined by looking at the to field	
	* If special is none, then no special move is done
	*/
	ColoredPiece special;


	/**
	* Piece is the class of the piece being moved
	* If a promotion has taken place, the class promoted to should be contained herein
	*/	
	ColoredPiece piece;

	/**
	* Content is the class of the piece being taken
	* If content is None then no piece was taken
	*/	
	ColoredPiece content;

public:
	Move();
	Move(int _from, int _to, ColoredPiece _special, ColoredPiece _piece, ColoredPiece _content);

	//
	void execute(Board &_board);
	void unexecute(Board &_board);
	
	/**
	 * Makes a general check on the validity of the move. 
	 * Be advised though that this function does not check the actual board
	 * for the legality. Does not check for checkmate, mate, stalemate, and blocking pieces
	 * only validity of positions.
	 */
	static bool isValid(Move &move);
	
	//accessors
	int getOldPosition(void);
	int getNewPosition(void);
	ColoredPiece getSpecial(void);
	ColoredPiece getPiece(void);
	ColoredPiece getContent(void);
};

#endif