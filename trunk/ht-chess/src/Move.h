#ifndef MOVE_H
#define MOVE_H

#include "Piece.h"
#include "Board.h"

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
	Move() {}

	Move(int _from, int _to, ColoredPiece _special, ColoredPiece _piece, ColoredPiece _content) :
		from(_from), to(_to), special(_special), piece(_piece), content(_content)
	{

	}

	//
	void execute(Board *_board)
	{
		ColoredPiece* board = _board->getContent();
		board[from] = NO_PIECE;
		board[to] = piece;

		//black top 8
		//white bottom 1

		//special moves
		if ((special & PAWN) == PAWN) { //en-passant

			if ((special & BLACK) == BLACK) { //black

				if (GET_ROW(to) == ROW_3) {
					board[GET_COLUMN(to) & ROW_4] = NO_PIECE;					
				}

			} else { //white
				
				if (GET_ROW(to) == ROW_6) {
					board[GET_COLUMN(to) & ROW_5] = NO_PIECE;					
				}
			}
		} else if ((special & KING) == KING) { //castling

			if ((special & BLACK) == BLACK) { //black
	
				if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
					board[F8] = ROOK_BLACK;
					board[H8] = NO_PIECE;
				} else { //queenside castling
					board[D8] = ROOK_BLACK;
					board[A8] = NO_PIECE;
				}
	
			} else { //white

				if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
					board[F1] = ROOK_WHITE;
					board[H1] = NO_PIECE;
				} else { //queenside castling
					board[D1] = ROOK_WHITE;
					board[A1] = NO_PIECE;
				}							
			}
		}
	}

	void unexecute(Board *_board)
	{
		ColoredPiece* board = _board->getContent();
		
		if (special == NO_PIECE) {
			board[from] = piece;
			board[to] = content;
		} else if ((special & PAWN) == PAWN) { //promotion and en-passant
						
			if ((special & BLACK) == BLACK) { //black

				if (GET_ROW(to) == ROW_1) { //promotion
					board[from] = PAWN_BLACK;
					board[to] = content;

				} else { //en-passant
					board[GET_COLUMN(to) & ROW_4] = PAWN_WHITE;
					board[to] = NO_PIECE;
					board[from] = piece;
				}

			} else { //white

				if (GET_ROW(to) == ROW_8) { //promotion
					board[from] = PAWN_WHITE;
					board[to] = content;

				} else { //en-passant
					board[GET_COLUMN(to) & ROW_5] = PAWN_BLACK;
					board[to] = NO_PIECE;
					board[from] = piece;
				}
			}

		} else if ((special & KING) == KING) { //castling
			board[from] = piece;
			board[to] = NO_PIECE;
			
			if ((special & BLACK) == BLACK) { //black				

				if (GET_COLUMN(to) == COLUMN_G) { //kingside castling					
					board[F8] = NO_PIECE;
					board[H8] = ROOK_BLACK;
				} else { //queenside castling
					board[D8] = NO_PIECE;
					board[A8] = ROOK_BLACK;
				}
	
			} else { //white

				if (GET_COLUMN(to) == COLUMN_G) { //kingside castling
					board[F1] = NO_PIECE;
					board[H1] = ROOK_WHITE;
				} else { //queenside castling
					board[D1] = NO_PIECE;
					board[A1] = ROOK_WHITE;
				}							
			}
		}
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

	ColoredPiece getSpecial()
	{
		return special;
	}

	ColoredPiece getPiece()
	{
		return piece;
	}

	ColoredPiece getContent()
	{
		return content;
	}
};

#endif