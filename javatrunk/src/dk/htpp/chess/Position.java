/*
 * To change this template; public static final int choose Tools | Templates
 * and open the template in the editor.
 */
package dk.htpp.chess;

/**
 *
 * @author LMK
 */
public class Position {

    /**
     * The Columns are denoted with letters. A through H, A to left and H to the right
     * The Rows are denoted using numbers. 1 at the bottom and 8 at the top
     */
    public static final int A1 = 0x00;
    public static final int A2 = 0x01;
    public static final int A3 = 0x02;
    public static final int A4 = 0x03;
    public static final int A5 = 0x04;
    public static final int A6 = 0x05;
    public static final int A7 = 0x06;
    public static final int A8 = 0x07;
    public static final int B1 = 0x10;
    public static final int B2 = 0x11;
    public static final int B3 = 0x12;
    public static final int B4 = 0x13;
    public static final int B5 = 0x14;
    public static final int B6 = 0x15;
    public static final int B7 = 0x16;
    public static final int B8 = 0x17;
    public static final int C1 = 0x20;
    public static final int C2 = 0x21;
    public static final int C3 = 0x22;
    public static final int C4 = 0x23;
    public static final int C5 = 0x24;
    public static final int C6 = 0x25;
    public static final int C7 = 0x26;
    public static final int C8 = 0x27;
    public static final int D1 = 0x30;
    public static final int D2 = 0x31;
    public static final int D3 = 0x32;
    public static final int D4 = 0x33;
    public static final int D5 = 0x34;
    public static final int D6 = 0x35;
    public static final int D7 = 0x36;
    public static final int D8 = 0x37;
    public static final int E1 = 0x40;
    public static final int E2 = 0x41;
    public static final int E3 = 0x42;
    public static final int E4 = 0x43;
    public static final int E5 = 0x44;
    public static final int E6 = 0x45;
    public static final int E7 = 0x46;
    public static final int E8 = 0x47;
    public static final int F1 = 0x50;
    public static final int F2 = 0x51;
    public static final int F3 = 0x52;
    public static final int F4 = 0x53;
    public static final int F5 = 0x54;
    public static final int F6 = 0x55;
    public static final int F7 = 0x56;
    public static final int F8 = 0x57;
    public static final int G1 = 0x60;
    public static final int G2 = 0x61;
    public static final int G3 = 0x62;
    public static final int G4 = 0x63;
    public static final int G5 = 0x64;
    public static final int G6 = 0X65;
    public static final int G7 = 0x66;
    public static final int G8 = 0x67;
    public static final int H1 = 0x70;
    public static final int H2 = 0x71;
    public static final int H3 = 0x72;
    public static final int H4 = 0x73;
    public static final int H5 = 0x74;
    public static final int H6 = 0x75;
    public static final int H7 = 0x76;
    public static final int H8 = 0x77;
            
    public static final int ROW_1 = 0x00;
    public static final int ROW_2 = 0x01;
    public static final int ROW_3 = 0x02;
    public static final int ROW_4 = 0x03;
    public static final int ROW_5 = 0x04;
    public static final int ROW_6 = 0x05;
    public static final int ROW_7 = 0x06;
    public static final int ROW_8 = 0x07;   
    
    public static final int COLUMN_A = 0x00;
    public static final int COLUMN_B = 0x10;
    public static final int COLUMN_C = 0x20;
    public static final int COLUMN_D = 0x30;
    public static final int COLUMN_E = 0x40;
    public static final int COLUMN_F = 0x50;
    public static final int COLUMN_G = 0x60;
    public static final int COLUMN_H = 0x70;
    
    public static final int INVALID_POSITION = 0x88;
    public static final int ROW_COUNT = 8;
    public static final int COLUMN_COUNT = 8;
    public static final int POSITION_OVERFLOW = 0x88;
    public static final int COLUMN_SHIFT = 4;

    /**
     *Retrieves the Column part of a position
     *The column is not shifted to become a normal integer
     */
    public static int getColumn(int x) {
        return (x & 0xF0);
    }

    /**
     *Retrieves the Column part of a position as a normal number
     */
    public static int getRealColumn(int x) {
        return (x >> COLUMN_SHIFT);
    }

    /**
     *Retrieves the Row part of a position
     */
    public static int getRow(int y) {
        return (y & 0x0F);
    }

    /**
     * Retrieves position using two normal numbers
     */
    public static int getPosition(int x, int y) {
        return (y | (x << COLUMN_SHIFT));
    }

    /**
     * Creates position using column and row, not normal numbers
     */
    public static int combineToPosition(int column, int row) {
        return (column | row);
    }

    /**	
     * Gets the color of the specified position
     */
    public static int getPositionColor(int pos) {
        return ((((pos & 0x11) == 0x11) || ((pos & 0x11) == 0x00)) ? Piece.BLACK : Piece.WHITE);
    }

    /**
     * Returns false if the specified position is invalid
     */
    public static boolean isValidPosition(int pos) {
        return ((pos & POSITION_OVERFLOW) == 0);
    }
}