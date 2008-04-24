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
	Position to;
	Position from;

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
	
	/**
	* Defines what piece involved castling were moved before this moved was initiated.
	* When creating a move just pass in the corresponding field in board.
	*/
	int hasMoved;	
	
	/**
	* Defines what position if any an en-passant moves was possible to before the move
	* When creating a move just pass in the corresponding field in board.
	*/
	Position enPassantPosition;
	
	/**
	* Defines how many turns were executed since the last ireversable move
	* Whene creating a move just pass in the corresponding field in board.
	*/
	int reversableMoves;

public:

	/**
	* Default constructor. No fields are initialized!
	*/
	Move();
	
	
	/**
	* Constructor. Does not check validity of move.
	*
	* param: Position, _from - position where _piece is moved from
	* param: Position, _to - position where _piece is moved to
	* param: ColoredPiece, _special -
	*	If special is a pawn the move is either en-passant or promotion
	*		If the _to position is the row the row before the row of pawns the move is en-passant 
	*		If the row to row is the last row then the move is an promotion
	*	If special is a king then the move is castling 
	*		the type of castling is determined by looking at the _to field	
	*	If special is none, then no special move is done
	* param: ColoredPiece, _piece - the piece being moved
	*	If a the move is a promotion then _piece is the result of the promotion
	* param: ColoredPiece, _content - the piece that occupied the to position before the move
	* param: int, _hasMoved - bit mask keeping track of whether the rooks and kings were moved before.
	*	helps in calculating castling.
	* param: Position, enPassantPosition - position where en-passant was available before the move.	
	* param: Defines how many turns were executed since the last ireversable move.
	*/
	Move(Position _from, 
		Position _to, 
		ColoredPiece _special, 
		ColoredPiece _piece, 
		ColoredPiece _content, 
		int _hasMoved, 
		Position _enPassantPosition,
		int reversableMoves);

	/**
	* Executes updating the board accordingly
	* param: Board&, _board - board to execute move on	
	*/
	void execute(Board &_board);
	
	/**
	* Unexecutes move, rolling back all changes to the board accordingly
	* param: Board&, _board - board to undo move on	
	*/
	void unexecute(Board &_board);
	
	/**
	 * Makes a general check on the validity of the move. 
	 * Be advised though that this function does not check the actual board
	 * for the legality. Does not check for checkmate, mate, stalemate, and blocking pieces
	 * only validity of positions.
	 */
	/*static bool isValid(Move &move);*/
	
	
	//accessors
	
	/**
	* Get position where piece should be moved from
	* return: Position - position
	*/
	Position getOldPosition();
	
	/**
	* Get position where piece should be moved to
	* return: Position - position
	*/	
	Position getNewPosition();
	
	/**
	* Get ColoredPiece representing special move.
	* King is castling, derive kingside and queenside from the new position.
	* Pawn is either promotion or en-passant, derive which from either the new or old position.
	* return: ColoredPiece
	*/	
	ColoredPiece getSpecial();
	
	/**
	* Get ColoredPiece being moved.
	* If a promotion has taken place piece well be the resulting piece.
	* return: ColoredPiece
	*/	
	ColoredPiece getPiece();
	
	/**
	* Get ColoredPiece that was captured during the move, if any.
	* return: ColoredPiece - NO_PIECE if no piece was captured
	*/	
	ColoredPiece getContent();
	
	/**
	* Get hasMoved field information, which keeps track of whether
	* kings and rooks were moved before the move.
	* return: int - bit mask.
	*/	
	int getHasMoved();
	
	/**
	* Get available en-passant position before move.
	* return: Position - position.
	*/	
	Position getEnPassantPosition();
	
	/**
	* Get the amount of moves since last ireversable
	* return: int - reversable move count
	*/
	int getReversableMoves();
};

#endif