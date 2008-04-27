/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.htpp.chess;

import java.util.*;

/**
 *
 * @author LMK
 */
public class Board {

    public static final int KING_MOVED = 0x01;
    public static final int ROOK_A_MOVED = 0x02;
    public static final int ROOK_H_MOVED = 0x04;

    /**
    * Tells whether the king of the specified color has moved	
    * @param: int, colorIndex - player color either BLACK_INDEX or WHITE_INDEX
    * @return: bool - true if the king has moved, false otherwise
    */
    public boolean hasKingMoved(int colorIndex) {
        return ((hasMoved[colorIndex] & KING_MOVED) == KING_MOVED);
    }

    public boolean hasRookAMoved(int colorIndex) {
        return ((hasMoved[colorIndex] & ROOK_A_MOVED) == ROOK_A_MOVED);
    }

    public boolean hasRookHMoved(int colorIndex) {
        return ((hasMoved[colorIndex] & ROOK_H_MOVED) == ROOK_H_MOVED);
    }
    
    public static int getColorIndex(int color) {
        return (color == Piece.WHITE) ? WHITE_INDEX : BLACK_INDEX;
    }
    
    public static final int[] PAWN_OUT_OF_BOUNDS = {Position.ROW_1 - 1, Position.ROW_8 + 1};
    public static final int[] PAWN_START_ROW = {Position.ROW_7, Position.ROW_2};
    public static final int[] CASTLING_ROW = {Position.ROW_8, Position.ROW_1}; //the start row for each color
    public static final int[] CASTLING_COLUMN_A = {Position.A8, Position.A1};
    public static final int[] CASTLING_COLUMN_B = {Position.B8, Position.B1};
    public static final int[] CASTLING_COLUMN_C = {Position.C8, Position.C1};
    public static final int[] CASTLING_COLUMN_D = {Position.D8, Position.D1};
    public static final int[] CASTLING_COLUMN_E = {Position.E8, Position.E1};
    public static final int[] CASTLING_COLUMN_F = {Position.F8, Position.F1};
    public static final int[] CASTLING_COLUMN_G = {Position.G8, Position.G1};
    public static final int[] CASTLING_COLUMN_H = {Position.H8, Position.H1};
    public static final int BLACK_INDEX = 0;
    public static final int WHITE_INDEX = 1;
    public static final int MAX_TURNS = 100;
    public static final int[] PAWN_DIRECTION = {-1, 1}; //0 = Piece.BLACK, 1 = Piece.WHITE
    public static final int[] PAWN_ENPASSANT_TAKE_ROW = {Position.ROW_3, Position.ROW_6}; //0 = Piece.BLACK, 1 = Piece.WHITE
    public static final int[] PAWN_ENPASSANT_CONTENT_ROW = {Position.ROW_4, Position.ROW_5}; //0 = Piece.BLACK, 1 = Piece.WHITE
    public static final int CONTENT_SIZE = 256;
    
    /**
    * 0x88 representation of board contents	
    */
    private int[] content = new int[CONTENT_SIZE];
    
    /**
    * Vector of moves used to calculate stale- and checkmate.
    */
    private Vector moveVector = new Vector();
    
    /**
    * Has moved keeps track of whether the white and black, rooks and kings have moved
    * Use BLACK_INDEX and WHITE_INDEX to index the array. 
    * 0 = black, 1 = white	
    */
    private int[] hasMoved = new int[2];
    
    
    /**
    * Not finished yet
    */
    private int enPassantPosition;

    /**
    * Keeps track of the positions of the black and white kings on the board.
    * Use BLACK_INDEX and WHITE_INDEX to index the array. 
    * 0 = black, 1 = white	
    */
    private int[] kingPosition = new int[2];

    /**
    * Keeps track of the material value of the black and white. 
    * The value is without the king.
    * Use BLACK_INDEX and WHITE_INDEX to index the array. 
    * 0 = black, 1 = white	
    */
    private int[] materialValue = new int[2];

    /**
    * Keeps track of whether the black and white have used their castling moves yet.
    * Use BLACK_INDEX and WHITE_INDEX to index the array. 
    * 0 = black, 1 = white	
    */
    private boolean[] hasCastled = new boolean[2]; 	   

    /**
    * The number of plys from last pawn move, or capture allowed is 50 before draw occurs.
    * This field keeps track of how many moves has been done since the last ireversible move.
    * 2 moves equals 1 ply, therefore the game should be a drawn once this field increments to 100.
    */
    private int reversableMoves;
	
    /**
    * Constructor. Create new board with initial positions. 	
    */
    public Board() {
        resetBoard();
    }

    /**
    * Checks that the move does not endanger the king of the specified color
    * If it doesn't the move is add to the supplied vector
    * @param: Color, color - player color
    * @param: Move, move - the move to be evaluated
    * @param: Vector, moves - Vector of moves to add move to when evaluated
    */
    public void testAndAddMove(int color, Move move, Vector moves) {
        move.execute(this);

        if (!isCheck(color)) {
            moves.addElement(move);
        }

        move.unexecute(this);
    }

    /**
    * Gets the piece if any at the specified position.
    * @param: int, position - position 
    * @return: int - NO_PIECE if no piece at position, else Piece | Color
    */
    public int getItemAt(int position) {
        return content[position];
    }

    /**
    * Sets the piece at position.
    * @param: int, position - position 
    */
    public void setItemAt(int position, int piece) {
        content[position] = piece;
    }
    
    public void setHasMoved(int colorIndex, int value) {
        hasMoved[colorIndex] = value;
    }
    
    public void addToHasMoved(int colorIndex, int bitMask) {
        hasMoved[colorIndex] |= bitMask;
    }
    
    /**
     * Subtract one from reversable moves
     */
    public void incrementReversableMoves() {
        reversableMoves++;
    }
    
    /**
     * Subtract one from reversable moves
     * Does not check for underflow
     */
    public void decrementReversableMoves() {
        reversableMoves--;
    }
    
    /**
     * Set reversable moves to 0
     */
    public void resetReversableMoves() {
        reversableMoves = 0;
    }
    /**
     * Set reversable moves to value
     * @param: int, moves
     */
    public void setReversableMoves(int moves) {
        reversableMoves = moves;
    }
    
    
    /**
    * Set available en-passant position before move.
    * @return: int - position.
    */	
    public void setEnPassantPosition(int _enPassantPosition) {
        enPassantPosition = _enPassantPosition;
    }
    
    /**
    * Get available en-passant position before move.
    * @param: int - position.
    */	
    public int getEnPassantPosition() {
        return enPassantPosition;
    }

    /**
    * Get the contents of the board
    */
    public int[] getContent() {
        return content;
    }

    /**
    * Set the position of a players king. Note this position is only a reference
    * it doesn't update the board.
    * @param: int, colorIndex - index of player color
    * @param: int, position - position of king
    */
    public void setPositionOfKing(int colorIndex, int position) {
        kingPosition[colorIndex] = position;
    }

    /**
    * Get the position of a players king	
    * @param: int, colorIndex - index of player color
    * @return: int - position of king
    */
    public int getPositionOfKing(int colorIndex) {
        return kingPosition[colorIndex];
    }

    /**
    * Tells whether the specified player is stalemate	
    * @param: int, color - Player color
    * @return: boolean - true if player is stalemate
    */
    public boolean isStalemate(int color) {
        if (reversableMoves >= MAX_TURNS) {
            return true;
        }
        if ((materialValue[BLACK_INDEX] == 0) && (materialValue[WHITE_INDEX] == 0)) {
            return true;
        }
        if (!isCheck(color)) {
            moveVector.removeAllElements();
            MoveGenerator.generateMoves(this, color, moveVector);
            if (moveVector.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    /**	
    * Tells whether the specified player is in check
    * @param: int, color - Player color
    * @return: boolean - true if player is in check
    */
    public boolean isCheck(int color) {
        if (Piece.NO_PIECE != getThreatOf(kingPosition[getColorIndex(color)], color)) {
            return true;
        }
        return false;
    }

    /**
    * Tells whether the specified player is checkmate	
    * @param: int, color - Player color
    * @return: boolean - true if player is in checkmate
    */
    public boolean isCheckmate(int color) {
        if (isCheck(color)) {
            moveVector.removeAllElements();
            MoveGenerator.generateMoves(this, color, moveVector);
            if (moveVector.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    /**
    * Returns whom if any player is checkmate	
    * @return: int - 0 if no one is checkmate, 
    *	BLACK if black player is checkmate
    *	or WHITE if white player is checkmate,
    */
    public int isCheckmate() {
        if (isCheckmate(Piece.WHITE)) {
            return Piece.WHITE;
        }
        if (isCheckmate(Piece.BLACK)) {
            return Piece.BLACK;
        }
        return 0;
    }
    
    /**
    * Returns whom if any player is stalemate
    * @return: int - 0 if no one is stalemate, 
    *	BLACK if black player is stalemate
    *	or WHITE if white player is stalemate,
    */
    public int isStalemate() {
        if (isStalemate(Piece.WHITE)) {
            return Piece.WHITE;
        }
        if (isStalemate(Piece.BLACK)) {
            return Piece.BLACK;
        }
        return 0;
    }

    /**
    * Returns the sum value of the specified color has left
    * The material value does not include the king
    * @param: int, color - Player color
    * @return: int, material value - Positive value of all piece except the king
    */
    public int getMaterialValue(int colorIndex) {
        return materialValue[colorIndex];
    }
    
    /**
    * Set the sum value of the specified color has left
    * The material value does not include the king
    * @param: int, color - Player color
    * @param: int, material value - Positive or negative value to be added
    */
    public void addToMaterialValue(int colorIndex, int increment) {
        materialValue[colorIndex] += increment;
    }

    
    /**
    * Set the sum value of the specified color has left
    * The material value does not include the king
    * @param: int, color - Player color
    * @param: int, material value - Positive value of all piece except the king
    */
    public void setMaterialValue(int colorIndex, int value) {
        materialValue[colorIndex] = value;
    }

    /**
    * Returns true if castling has been performed by the specified player
    * @param: int, color - Player color
    * @return: boolean
    */
    public boolean hasPerformedCastling(int colorIndex) {
        return hasCastled[colorIndex];
    }
    
    /**
    * Set whether castling has been performed by the specified player
    * @param: int, color - Player color
    * @param: boolean, hasCastled
    */
    public void setHasPerformedCastling(int colorIndex, boolean _hasCastled) {
        hasCastled[colorIndex] = _hasCastled;
    }

    /**
    * Add all legal moves that does not endanger the king to the provided vector
    * The detects piece type and color from position. If no piece is present at
    * the specified position nothing is added.	
    * @param: int, position - position of piece
    * @param: Vector, moves - vector to add moves to
    * @param: Vector, moves - vector to add moves to
    */
    public void getMovesFromPosition(int position, Vector moves) {

        int piece = content[position];

        switch (Piece.getPieceType(piece)) {
            case Piece.PAWN:
                getPawnMovesFrom(position, moves);
                break;
            case Piece.KNIGHT:
                getKnightMovesFrom(position, moves);
                break;
            case Piece.BISHOP:
                getBishopMovesFrom(position, moves);
                break;
            case Piece.ROOK:
                getRookMovesFrom(position, moves);
                break;
            case Piece.QUEEN:
                getQueenMovesFrom(position, moves);
                break;
            case Piece.KING:
                getKingMovesFrom(position, moves);
                break;
        }
    }

    /**	
    *  x
    * xxx
    *  0
    * 
    * Add all legal moves that does not endanger the king to the provided vector
    * The pawn must be present at the specified position. The color of the piece
    * is derived from the position.
    * 
    * @param: int, position - position of the pawn
    * @param: Vector, move - vector to add moves to
    */
    public void getPawnMovesFrom(int position, Vector moves) {
        int row = Position.getRow(position);
        int column = Position.getRealColumn(position);
        int color = Piece.getPieceColor(content[position]);
        int piece = content[position];
        int colorIndex = getColorIndex(color);
        int direction = PAWN_DIRECTION[colorIndex];
        int doubleDirection = PAWN_DIRECTION[colorIndex] * 2;

        //en-passant	//changed
        if ((row == PAWN_ENPASSANT_CONTENT_ROW[colorIndex]) && (Position.getRow(enPassantPosition) == PAWN_ENPASSANT_TAKE_ROW[colorIndex])) { //en-passant
            int x = Position.getRealColumn(enPassantPosition);

            if (((column + 1) == x) || ((column - 1) == x)) {

                Move move = new Move(
                        position,
                        enPassantPosition,
                        piece,
                        piece,
                        Piece.getColoredPiece(Piece.PAWN, Piece.getOppositeColor(color)),
                        hasMoved[colorIndex],
                        enPassantPosition,
                        reversableMoves);

                testAndAddMove(color, move, moves);
            }
        }

        int special = Piece.NO_PIECE;

        //promotion
        if ((row + direction) == CASTLING_ROW[colorIndex ^ 0x01]) {
            special = piece;
            piece = Piece.getColoredPiece(Piece.QUEEN, color); //could be changed to let user choose					
        }

        //left capture
        if ((column > 0) && (Piece.getPieceColor(content[Position.getPosition(column - 1, row + direction)]) == Piece.getOppositeColor(color))) {
            Move move = new Move(
                    position,
                    Position.getPosition(column - 1, row + direction),
                    special,
                    piece,
                    content[Position.getPosition(column - 1, row + direction)],
                    hasMoved[colorIndex],
                    enPassantPosition,
                    reversableMoves);

            testAndAddMove(color, move, moves);
        }

        //right capture	
        if ((column < (Position.COLUMN_COUNT - 1)) && (Piece.getPieceColor(content[Position.getPosition(column + 1, row + direction)]) == Piece.getOppositeColor(color))) {

            Move move = new Move(
                    position,
                    Position.getPosition(column + 1, row + direction),
                    special,
                    piece,
                    content[Position.getPosition(column + 1, row + direction)],
                    hasMoved[colorIndex],
                    enPassantPosition,
                    reversableMoves);

            testAndAddMove(color, move, moves);
        }

        //normal advance
        if (content[Position.getPosition(column, row + direction)] == Piece.NO_PIECE) {

            Move move = new Move(
                    position,
                    Position.getPosition(column, row + direction),
                    special,
                    piece,
                    Piece.NO_PIECE,
                    hasMoved[colorIndex],
                    enPassantPosition,
                    reversableMoves);

            testAndAddMove(color, move, moves);

            if ((row == PAWN_START_ROW[colorIndex]) && //double advance
                    (content[Position.getPosition(column, row + doubleDirection)] == Piece.NO_PIECE)) {

                move = new Move(
                        position,
                        Position.getPosition(column, row + doubleDirection),
                        Piece.NO_PIECE,
                        piece,
                        Piece.NO_PIECE,
                        hasMoved[colorIndex],
                        enPassantPosition,
                        reversableMoves);

                testAndAddMove(color, move, moves);
            }
        }
    }
    
    
    public static final int[] KNIGHT_MOVES = {1, 2, 2, 1, 2, -1, 1, -2, -1, -2, -2, -1, -2, 1, -1, 2};

    /**
    *  x x
    * x   x
    *   0
    * x   x
    *  x x
    *	
    * Add all legal moves that does not endanger the king to the provided vector
    * The knight must be present at the specified position. The color of the piece
    * is derived from the position.
    * @param: int, position - position of the knight
    * @param: Vector, move - vector to add moves to
    */
    void getKnightMovesFrom(int position, Vector moves) {
        int row = Position.getRow(position);
        int column = Position.getRealColumn(position);
        int color = Piece.getPieceColor(content[position]);
        int to;
        int piece;
        int colorIndex = getColorIndex(color);

        for (int i = 0; i < 16; i += 2) {
            to = Position.getPosition(column + KNIGHT_MOVES[i], row + KNIGHT_MOVES[i + 1]);

            if (Position.isValidPosition(to)) {
                piece = content[to];

                if (Piece.getPieceColor(piece) != color) {
                    Move move = new Move(
                            position,
                            to,
                            Piece.NO_PIECE,
                            content[position],
                            piece,
                            hasMoved[colorIndex],
                            enPassantPosition,
                            reversableMoves);

                    testAndAddMove(color, move, moves);
                }
            }
        }
    }
    
    public static final int[] BISHOP_MOVES = {1, 1, 1, -1, -1, -1, -1, 1};
    
    /**
    * x x
    *  0
    * x x
    *	
    * Add all legal moves that does not endanger the king to the provided vector
    * The bishop must be present at the specified position. The color of the piece
    * is derived from the position.
    * @param: int, position - position of the bishop
    * @param: Vector, move - vector to add moves to
    */	
    void getBishopMovesFrom(int position, Vector moves) {
        int row = Position.getRow(position);
        int column = Position.getRealColumn(position);
        int color = Piece.getPieceColor(content[position]);
        int to;
        boolean blocked;
        int piece;
        int colorIndex = getColorIndex(color);

        for (int i = 0; i < 8; i += 2) {
            blocked = false;
            int x = column;
            int y = row;

            while (!blocked) {
                x += BISHOP_MOVES[i];
                y += BISHOP_MOVES[i + 1];

                to = Position.getPosition(x, y);
                if (!Position.isValidPosition(to)) {
                    break;
                }

                piece = content[to];

                if (Piece.getPieceColor(piece) != color) {
                    Move move = new Move(
                            position,
                            to,
                            Piece.NO_PIECE,
                            content[position],
                            piece,
                            hasMoved[colorIndex],
                            enPassantPosition,
                            reversableMoves);

                    testAndAddMove(color, move, moves);
                }

                if (piece != Piece.NO_PIECE) {
                    blocked = true;
                }
            }
        }
    }
    
    
    public static final int[] ROOK_MOVES = {0, 1, 1, 0, 0, -1, -1, 0};

    /**
    *  x
    * x0x
    *  x
    *	
    * Add all legal moves that does not endanger the king to the provided vector
    * The rook must be present at the specified position. The color of the piece
    * is derived from the position.
    * @param: int, position - position of the rook
    * @param: Vector, move - vector to add moves to
    */
    void getRookMovesFrom(int position, Vector moves) {
        int row = Position.getRow(position);
        int column = Position.getRealColumn(position);
        int color = Piece.getPieceColor(content[position]);
        int to;
        boolean blocked;
        int piece;
        int colorIndex = getColorIndex(color);

        for (int i = 0; i < 8; i += 2) {
            blocked = false;
            int x = column;
            int y = row;

            while (!blocked) {
                x += ROOK_MOVES[i];
                y += ROOK_MOVES[i + 1];

                to = Position.getPosition(x, y);
                if (!Position.isValidPosition(to)) {
                    break;
                }

                piece = content[to];

                if (Piece.getPieceColor(piece) != color) {
                    Move move = new Move(
                            position,
                            to,
                            Piece.NO_PIECE,
                            content[position],
                            piece,
                            hasMoved[colorIndex],
                            enPassantPosition,
                            reversableMoves);

                    testAndAddMove(color, move, moves);
                }

                if (piece != Piece.NO_PIECE) {
                    blocked = true;
                }
            }
        }
    }
    
    
    public static final int[] QUEEN_MOVES = {1, 1, 1, -1, -1, -1, -1, 1, 0, 1, 1, 0, 0, -1, -1, 0};

    /**
    * xxx
    * x0x
    * xxx
    *	
    * Add all legal moves that does not endanger the king to the provided vector
    * The queen must be present at the specified position. The color of the piece
    * is derived from the position.
    * @param: int, position - position of the queen
    * @param: Vector, move - vector to add moves to
    */
    void getQueenMovesFrom(int position, Vector moves) {
        int row = Position.getRow(position);
        int column = Position.getRealColumn(position);
        int color = Piece.getPieceColor(content[position]);
        int to;
        boolean blocked;
        int piece;
        int colorIndex = getColorIndex(color);

        for (int i = 0; i < 16; i += 2) {
            blocked = false;
            int x = column;
            int y = row;

            while (!blocked) {
                x += QUEEN_MOVES[i];
                y += QUEEN_MOVES[i + 1];

                to = Position.getPosition(x, y);
                if (!Position.isValidPosition(to)) {
                    break;
                }

                piece = content[to];

                if (Piece.getPieceColor(piece) != color) {
                    Move move = new Move(
                            position,
                            to,
                            Piece.NO_PIECE,
                            content[position],
                            piece,
                            hasMoved[colorIndex],
                            enPassantPosition,
                            reversableMoves);

                    testAndAddMove(color, move, moves);
                }

                if (piece != Piece.NO_PIECE) {
                    blocked = true;
                }
            }
        }
    }

    /**
    * xxx
    * x0x
    * xxx
    *
    * Add all legal moves that does not endanger the king to the provided vector
    * The king must be present at the specified position. The color of the piece
    * is derived from the position.
    * This function also creates king and queenside castling moves
    * @param: int, position - position of the king
    * @param: Vector, move - vector to add moves to
    */
    void getKingMovesFrom(int position, Vector moves) {
        int row = Position.getRow(position);
        int column = Position.getRealColumn(position);
        int color = Piece.getPieceColor(content[position]);
        int to;
        int piece = content[position];
        int colorIndex = getColorIndex(color);

        //castling	
        if ((!hasKingMoved(colorIndex)) &&
                (Piece.NO_PIECE == getThreatOf(CASTLING_COLUMN_E[colorIndex], color))) {

            //kingside
            if ((!hasRookHMoved(colorIndex)) &&
                    (content[CASTLING_COLUMN_F[colorIndex]] == Piece.NO_PIECE) &&
                    (content[CASTLING_COLUMN_H[colorIndex]] == Piece.NO_PIECE) &&
                    (Piece.NO_PIECE == getThreatOf(CASTLING_COLUMN_F[colorIndex], color)) &&
                    (Piece.NO_PIECE == getThreatOf(CASTLING_COLUMN_G[colorIndex], color))) {

                moves.addElement(new Move(
                        position,
                        CASTLING_COLUMN_G[colorIndex],
                        piece,
                        piece,
                        Piece.NO_PIECE,
                        hasMoved[colorIndex],
                        enPassantPosition,
                        reversableMoves));

            //queenside
            } else if ((!hasRookAMoved(colorIndex)) &&
                    (content[CASTLING_COLUMN_B[colorIndex]] == Piece.NO_PIECE) &&
                    (content[CASTLING_COLUMN_C[colorIndex]] == Piece.NO_PIECE) &&
                    (content[CASTLING_COLUMN_D[colorIndex]] == Piece.NO_PIECE) &&
                    (Piece.NO_PIECE == getThreatOf(CASTLING_COLUMN_C[colorIndex], color)) &&
                    (Piece.NO_PIECE == getThreatOf(CASTLING_COLUMN_D[colorIndex], color))) {

                moves.addElement(new Move(
                        position,
                        CASTLING_COLUMN_C[colorIndex],
                        piece,
                        piece,
                        Piece.NO_PIECE,
                        hasMoved[colorIndex],
                        enPassantPosition,
                        reversableMoves));
            }
        }

        //normal moves
        for (int i = 0; i < 16; i += 2) {
            to = Position.getPosition(column + QUEEN_MOVES[i], row + QUEEN_MOVES[i + 1]);

            if (Position.isValidPosition(to)) {
                piece = content[to];

                if (Piece.getPieceColor(piece) != color) {

                    Move move = new Move(
                            position,
                            to,
                            Piece.NO_PIECE,
                            content[position],
                            piece,
                            hasMoved[colorIndex],
                            enPassantPosition,
                            reversableMoves);

                    testAndAddMove(color, move, moves);
                }
            }
        }
    }

    /**
    * Tells whether the specified position is under attack for the specified player
    * @param: int, position - position
    * @param: int, color - player color
    * @return: int - the least valued piece threatening the selected position
    *	values goes down from king through queen, rook, bishop, knight to pawn.
    */
    int getThreatOf(int position, int color) {
        int row = Position.getRow(position);
        int column = Position.getRealColumn(position);
        int to;
        boolean blocked;
        int piece;
        int threat = Piece.NO_PIECE;
        int x, y, distance;

        for (int i = 0; i < 16; i += 2) {
            blocked = false;
            x = column;
            y = row;
            distance = 0;

            while (!blocked) {
                x += QUEEN_MOVES[i];
                y += QUEEN_MOVES[i + 1];
                distance++;

                to = Position.getPosition(x, y);
                if (!Position.isValidPosition(to)) {
                    break;
                }

                piece = content[to];

                if ((Piece.getPieceColor(piece) != color) && ((piece > threat) || (threat == Piece.NO_PIECE))) {

                    if ((0 <= i) && (i < 8)) {

                        switch (Piece.getPieceType(piece)) {
                            case Piece.PAWN:
                                if (distance == 1) {
                                    if (color == Piece.BLACK) { //threatening piece must be Piece.BLACK							
                                        if (i >= 4) {
                                            return piece;
                                        }

                                    } else {

                                        if (i < 4) {
                                            return piece;
                                        }
                                    }
                                }
                                break;
                            case Piece.QUEEN:
                            case Piece.BISHOP:
                                threat = piece;
                                break;
                            case Piece.KING:
                                if (distance == 1) {
                                    threat = piece;
                                }
                                break;
                        }
                    } else {

                        switch (Piece.getPieceType(piece)) {
                            case Piece.QUEEN:
                            case Piece.ROOK:
                                threat = piece;
                                break;
                            case Piece.KING:
                                if (distance == 1) {
                                    threat = piece;
                                }
                                break;
                        }
                    }
                }

                if (piece != Piece.NO_PIECE) {
                    blocked = true;
                }
            }
        }

        if ((threat != Piece.NO_PIECE) && (Piece.getPieceType(threat) > Piece.KNIGHT)) {
            return threat;
        }

        for (int i = 0; i < 16; i += 2) {
            to = Position.getPosition(column + KNIGHT_MOVES[i], row + KNIGHT_MOVES[i + 1]);

            if (Position.isValidPosition(to)) {
                piece = content[to];

                if ((Piece.getPieceColor(piece) != color) && (Piece.getPieceType(piece) == Piece.KNIGHT)) {
                    return piece;
                }
            }
        }

        return threat;
    }

    /**
    * Reset board to initial start position. Black pieces in row 7 and 8.
    * White piece in row 1 and 2.
    */
    void resetBoard() {
        for (int i = 0; i < CONTENT_SIZE; ++i) {
            content[i] = Piece.NO_PIECE;
        }

        //BLACK VIPS
        content[Position.A8] = Piece.ROOK_BLACK;
        content[Position.B8] = Piece.KNIGHT_BLACK;
        content[Position.C8] = Piece.BISHOP_BLACK;
        content[Position.D8] = Piece.QUEEN_BLACK;
        content[Position.E8] = Piece.KING_BLACK;
        content[Position.F8] = Piece.BISHOP_BLACK;
        content[Position.G8] = Piece.KNIGHT_BLACK;
        content[Position.H8] = Piece.ROOK_BLACK;
        //BLACK PAWNS
        content[Position.B7] = Piece.PAWN_BLACK;
        content[Position.C7] = Piece.PAWN_BLACK;
        content[Position.D7] = Piece.PAWN_BLACK;
        content[Position.E7] = Piece.PAWN_BLACK;
        content[Position.F7] = Piece.PAWN_BLACK;
        content[Position.G7] = Piece.PAWN_BLACK;
        content[Position.H7] = Piece.PAWN_BLACK;

        //WHITE PAWNS
        content[Position.A2] = Piece.PAWN_WHITE;
        content[Position.B2] = Piece.PAWN_WHITE;
        content[Position.C2] = Piece.PAWN_WHITE;
        content[Position.D2] = Piece.PAWN_WHITE;
        content[Position.E2] = Piece.PAWN_WHITE;
        content[Position.F2] = Piece.PAWN_WHITE;
        content[Position.G2] = Piece.PAWN_WHITE;
        content[Position.H2] = Piece.PAWN_WHITE;
        //WHITE VIPS
        content[Position.A1] = Piece.ROOK_WHITE;
        content[Position.B1] = Piece.KNIGHT_WHITE;
        content[Position.C1] = Piece.BISHOP_WHITE;
        content[Position.D1] = Piece.QUEEN_WHITE;
        content[Position.E1] = Piece.KING_WHITE;
        content[Position.F1] = Piece.BISHOP_WHITE;
        content[Position.G1] = Piece.KNIGHT_WHITE;
        content[Position.H1] = Piece.ROOK_WHITE;

        kingPosition[BLACK_INDEX] = Position.E8;
        kingPosition[WHITE_INDEX] = Position.E1;
        hasMoved[BLACK_INDEX] = 0;
        hasMoved[WHITE_INDEX] = 0;

        materialValue[WHITE_INDEX] = Piece.PIECE_VALUE[Piece.QUEEN] + (Piece.PIECE_VALUE[Piece.ROOK] * 2) + (Piece.PIECE_VALUE[Piece.BISHOP] * 2) + (Piece.PIECE_VALUE[Piece.KNIGHT] * 2) + (Piece.PIECE_VALUE[Piece.PAWN] * 8);
        materialValue[BLACK_INDEX] = materialValue[WHITE_INDEX];

        reversableMoves = 0;
    }
}