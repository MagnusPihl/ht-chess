/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.htpp.chess;

/**
 *
 * @author LMK
 */
public class Piece {       
    
    /**
     * Returns true if color is equal to wanted color
     */
    public static boolean isColor(int color, int wantedColor) {
        return ((color & PIECE_COLOR) == wantedColor);
    }

    /**
     * Returns true if color is WHITE
     */
    public static boolean isBlack(int color) {
        return ((color & PIECE_COLOR) == BLACK);
    }

    /**
     * Returns true if color is BLACK
     */
    public static boolean isWhite(int color) {
        return ((color & PIECE_COLOR) == WHITE);
    }

    /**
     * Returns opposite WHITE if BLACK, BLACK if WHITE
     */
    public static int getOppositeColor(int color) {
        return (color ^ PIECE_COLOR);
    }

    /**
     * Returns the color of a piece
     */
    public static int getPieceColor(int x) {
        return (x & PIECE_COLOR);
    }

    /**
     * Returns the piece type of a piece
     */
    public static int getPieceType(int x) {
        return (x & PIECE_TYPE);
    }

    /**
     * Returns the combined ColoredPiece
     */
    public static int getColoredPiece(int type, int color) {
        return (type | color);
    }
    
    public static final int[] PIECE_VALUE = {
        10000, //konge
        900, //dronning
        500, //tårn
        300, //løber
        300, //springer
        100, //bonde
        0,	//intet	
    };
    
    public static final int NO_COLOR = 0x00;
    public static final int BLACK = 0x10;
    public static final int WHITE = 0x20;
    
    /**
     * Bit mask for colors
     */
    public static final int PIECE_COLOR = (BLACK | WHITE);
    
    /**
     * Bit mask for piece type
     */
    public static final int PIECE_TYPE = 0x0F;
    public static final int KING = 0;
    public static final int QUEEN = 1; //konge
    public static final int ROOK = 2; //dronning	
    public static final int BISHOP = 3; //tårn
    public static final int KNIGHT = 4; //løber
    public static final int PAWN = 5; //springer
    public static final int NONE = 6; //bonde
    public static final int PIECE_TYPE_COUNT = 6; //intet
    public static final int KING_BLACK = (BLACK | KING);//konge
    public static final int KING_WHITE = (WHITE | KING);
    public static final int QUEEN_BLACK = (BLACK | QUEEN);//dronning
    public static final int QUEEN_WHITE = (WHITE | QUEEN);
    public static final int KNIGHT_BLACK = (BLACK | KNIGHT); //springer
    public static final int KNIGHT_WHITE = (WHITE | KNIGHT);
    public static final int BISHOP_BLACK = (BLACK | BISHOP); //løber
    public static final int BISHOP_WHITE = (WHITE | BISHOP);
    public static final int ROOK_BLACK = (BLACK | ROOK); //tårn
    public static final int ROOK_WHITE = (WHITE | ROOK);
    public static final int PAWN_BLACK = (BLACK | PAWN); //bonde
    public static final int PAWN_WHITE = (WHITE | PAWN);
    public static final int NO_PIECE = NONE;    
}