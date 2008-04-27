/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dk.htpp.chess;

/**
 *
 * @author LMK
 */
public class Move {
	
    /**
    * To and from defines the postion the piece moved from and to
    */	
    private int to;
    private int from;

    /**
    * If special is a pawn the move is either en-passant or promotion
    *	If the to position is the row the row before the row of pawns the move is en-passant 
    *	If the row to row is the last row then the move is an promotion
    * If special is a king then the move is castling 
    *	the type of castling is determined by looking at the to field	
    * If special is none, then no special move is done
    */
    private int special;


    /**
    * Piece is the class of the piece being moved
    * If a promotion has taken place, the class promoted to should be contained herein
    */	
    private int piece;

    /**
    * Content is the class of the piece being taken
    * If content is None then no piece was taken
    */	
    private int content;

    /**
    * Defines what piece involved castling were moved before this moved was initiated.
    * When creating a move just pass in the corresponding field in board.
    */
    private int hasMoved;	

    /**
    * Defines what position if any an en-passant moves was possible to before the move
    * When creating a move just pass in the corresponding field in board.
    */
    private int enPassantPosition;

    /**
    * Defines how many turns were executed since the last ireversable move
    * Whene creating a move just pass in the corresponding field in board.
    */
    private int reversableMoves;
		
    /**
    * Constructor. Does not check validity of move.
    *
    * @param: int, _from - position where _piece is moved from
    * @param: int, _to - position where _piece is moved to
    * @param: int, _special -
    *	If special is a pawn the move is either en-passant or promotion
    *		If the _to position is the row the row before the row of pawns the move is en-passant 
    *		If the row to row is the last row then the move is an promotion
    *	If special is a king then the move is castling 
    *		the type of castling is determined by looking at the _to field	
    *	If special is none, then no special move is done
    * @param: int, _piece - the piece being moved
    *	If a the move is a promotion then _piece is the result of the promotion
    * @param: int, _content - the piece that occupied the to position before the move
    * @param: int, _hasMoved - bit mask keeping track of whether the rooks and kings were moved before.
    *	helps in calculating castling.
    * @param: int, _enPassantPosition - position where en-passant was available before the move.	
    * @param: int, _reversableMoves - Defines how many turns were executed since the last ireversable move.
    */
    public Move(int _from, int _to, int _special, int _piece, int _content, int _hasMoved, int _enPassantPosition, int _reversableMoves) {
        from = _from;
        to = _to;
        special = _special;
        piece = _piece;
        content = _content;
        hasMoved = _hasMoved;
        enPassantPosition = _enPassantPosition;
        reversableMoves = _reversableMoves;
    }
	
    /**
    * Executes updating the board accordingly
    * @param: Board, _board - board to execute move on	
    */
    public void execute(Board board) {
        board.setItemAt(from, Piece.NO_PIECE);
	board.setItemAt(to, piece);
	board.setEnPassantPosition(Position.INVALID_POSITION);
	int type = Piece.getPieceType(piece);
	int color = Piece.getPieceColor(piece);
	board.incrementReversableMoves();		
	int colorIndex = Board.getColorIndex(color);

	//black top 8
	//Piece.WHITE bottom 1
	if (content != Piece.NO_PIECE) {
		board.resetReversableMoves();
		board.addToMaterialValue(Board.getColorIndex(Piece.getPieceColor(content)), - Piece.PIECE_VALUE[Piece.getPieceType(content)]);
	}

	switch (type) {
		case Piece.PAWN:
			board.resetReversableMoves();			
			
			if (((Position.getRow(to) - Position.getRow(from))*Board.PAWN_DIRECTION[colorIndex]) == 2) {				
				board.setEnPassantPosition(Position.combineToPosition(Position.getColumn(to), Board.PAWN_ENPASSANT_TAKE_ROW[(colorIndex ^ 0x01)]));
			}			
			
			break;			
	
		case Piece.KING:					
			board.setPositionOfKing(to, color);
			board.addToHasMoved(colorIndex, Board.KING_MOVED);
			break;
			
		case Piece.ROOK:
			//set rook moved
			if ((!board.hasRookAMoved(colorIndex)) && 
				(from == Board.CASTLING_COLUMN_A[colorIndex])) {
				
				board.addToHasMoved(colorIndex, Board.ROOK_A_MOVED);					
				
			} else if ((!board.hasRookHMoved(colorIndex)) && 
				(from == Board.CASTLING_COLUMN_H[colorIndex])) {
				
				board.addToHasMoved(colorIndex, Board.ROOK_H_MOVED);
			}
			
			break;
			
	}

	//special moves
	switch (Piece.getPieceType(special)) { 
	
		case Piece.PAWN: //en-passant or promotion			

				//changed
			if (Position.getRow(to) == Board.PAWN_ENPASSANT_TAKE_ROW[colorIndex]) { //en-passant
				board.setItemAt(Position.combineToPosition(Position.getColumn(to), Board.PAWN_ENPASSANT_CONTENT_ROW[colorIndex]), Piece.NO_PIECE);					
			} else {					
				board.addToMaterialValue(colorIndex, Piece.PIECE_VALUE[Piece.QUEEN] - Piece.PIECE_VALUE[Piece.PAWN]);
			}
			break;
			
		case Piece.KING: //castling
			
			board.setHasPerformedCastling(colorIndex, true);
			
			if (Position.getColumn(to) == Position.COLUMN_G) { //kingside castling
				board.setItemAt(Board.CASTLING_COLUMN_F[colorIndex], Piece.getColoredPiece(Piece.ROOK,color));
				board.setItemAt(Board.CASTLING_COLUMN_H[colorIndex], Piece.NO_PIECE);
				board.addToHasMoved(colorIndex, Board.ROOK_H_MOVED);
			} else { //queenside castling										
				board.setItemAt(Board.CASTLING_COLUMN_D[colorIndex], Piece.getColoredPiece(Piece.ROOK,color));
				board.setItemAt(Board.CASTLING_COLUMN_A[colorIndex], Piece.NO_PIECE);
				board.addToHasMoved(colorIndex, Board.ROOK_A_MOVED);
			}
			break;			
	}			

    }

    /**
    * Unexecutes move, rolling back all changes to the board accordingly
    * @param: Board, _board - board to undo move on	
    */
    public void unexecute(Board board) {
        int color = Piece.getPieceColor(piece);
	int colorIndex = Board.getColorIndex(color);
	board.setEnPassantPosition(enPassantPosition);
	board.setReversableMoves(reversableMoves);
	board.setHasMoved(colorIndex, hasMoved);		
	board.addToMaterialValue(colorIndex, Piece.PIECE_VALUE[Piece.getPieceType(content)]);	
	
	
	if (Piece.getPieceType(piece) == Piece.KING) {		
		board.setPositionOfKing(colorIndex, from);
	}
	
	switch (Piece.getPieceType(special)) {
		case Piece.NO_PIECE:
			board.setItemAt(from, piece);
			board.setItemAt(to, content);
			break;
			
		case Piece.PAWN: //promotion and en-passant
					
					//changed
			if (Position.getRow(to) == Board.PAWN_ENPASSANT_TAKE_ROW[colorIndex]) { //en-passant
				board.setItemAt(Position.combineToPosition(Position.getColumn(to), Board.PAWN_ENPASSANT_CONTENT_ROW[colorIndex]), content);					
				board.setItemAt(to, Piece.NO_PIECE);
				board.setItemAt(from, piece);	
			} else { //promotion
				board.addToMaterialValue(colorIndex, Piece.PIECE_VALUE[Piece.PAWN] - Piece.PIECE_VALUE[Piece.QUEEN]);
				board.setItemAt(from, special);
				board.setItemAt(to, content);
			}
			break;

		case Piece.KING: //castling
			board.setItemAt(from, piece);
			board.setItemAt(to, Piece.NO_PIECE);		
			board.setHasPerformedCastling(colorIndex, false);
			
			if (Position.getColumn(to) == Position.COLUMN_G) { //kingside castling					
				board.setItemAt(Board.CASTLING_COLUMN_F[colorIndex], Piece.NO_PIECE);
				board.setItemAt(Board.CASTLING_COLUMN_H[colorIndex], Piece.getColoredPiece(Piece.ROOK,color));
			} else { //queenside castling
				board.setItemAt(Board.CASTLING_COLUMN_D[colorIndex], Piece.NO_PIECE);
				board.setItemAt(Board.CASTLING_COLUMN_A[colorIndex], Piece.getColoredPiece(Piece.ROOK,color));
			}
			break;	
	}
    }

    //accessors
    /**
    * Get position where piece should be moved from
    * @return: int - position
    */
    public int getOldPosition() {
        return from;
    }

    /**
    * Get position where piece should be moved to
    * @return: int - position
    */	
    public int getNewPosition() {
        return to;
    }

    /**
    * Get ColoredPiece representing special move.
    * King is castling, derive kingside and queenside from the new position.
    * Pawn is either promotion or en-passant, derive which from either the new or old position.
    * @return: int
    */	
    public int getSpecial() {
        return special;
    }

    /**
    * Get ColoredPiece being moved.
    * If a promotion has taken place piece well be the resulting piece.
    * @return: int
    */	
    public int getPiece() {
        return piece;
    }

    /**
    * Get ColoredPiece that was captured during the move, if any.
    * @return: int - Piece.NO_PIECE if no piece was captured
    */	
    public int getContent() {
        return content;
    }

    /**
    * Get hasMoved field information, which keeps track of whether
    * kings and rooks were moved before the move.
    * @return: int - bit mask.
    */	
    public int getHasMoved() {
        return hasMoved;
    }

    /**
    * Get available en-passant position before move.
    * @return: int - position.
    */	
    public int getEnPassantPosition() {
        return enPassantPosition;
    }        

    /**
    * Get the amount of moves since last ireversable
    * @return: int - reversable move count
    */
    public int getReversableMoves() {
        return reversableMoves;
    }
}
