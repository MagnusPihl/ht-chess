#ifndef POSITION_H
#define POSITION_H

#include "Piece.h"

#define ROW_COUNT 8	
#define COLUMN_COUNT 8	
#define POSITION_OVERFLOW 0x88
#define COLUMN_SHIFT 4


/**
 *Retrieves the Column part of a position
 *The column is not shifted to become a normal integer
 */
#define GET_COLUMN(x) ((x) & 0xF0)

/**
 *Retrieves the Column part of a position as a normal number
 */
#define GET_REAL_COLUMN(x) ((x) >> COLUMN_SHIFT)

/**
 *Retrieves the Row part of a position
 */
#define GET_ROW(y) ((y) & 0x0F)

/**
 * Retrieves position using two normal numbers
 */
#define GET_POSITION(x,y) ((Position)((y) | ((x) << COLUMN_SHIFT)))

/**
 * Gets the color of the specified position
 */
#define GET_POSITION_COLOR(pos) (((((pos) & 0x11) == 0x11) || (((pos) & 0x11) == 0x00)) ? BLACK : WHITE)

#define IS_VALID_POSITION(pos) (((pos) & POSITION_OVERFLOW) != POSITION_OVERFLOW)

/**
 * The Columns are denoted with letters. A through H, A to left and H to the right
 * The Rows are denoted using numbers. 1 at the bottom and 8 at the top
 */
enum Position
{
	A1 = 0x00, A2 = 0x01, A3 = 0x02, A4 = 0x03, A5 = 0x04, A6 = 0x05, A7 = 0x06, A8 = 0x07,
	B1 = 0x10, B2 = 0x11, B3 = 0x12, B4 = 0x13, B5 = 0x14, B6 = 0x15, B7 = 0x16, B8 = 0x17,
	C1 = 0x20, C2 = 0x21, C3 = 0x22, C4 = 0x23, C5 = 0x24, C6 = 0x25, C7 = 0x26, C8 = 0x27,
	D1 = 0x30, D2 = 0x31, D3 = 0x32, D4 = 0x33, D5 = 0x34, D6 = 0x35, D7 = 0x36, D8 = 0x37,
	E1 = 0x40, E2 = 0x41, E3 = 0x42, E4 = 0x43, E5 = 0x44, E6 = 0x45, E7 = 0x46, E8 = 0x47,
	F1 = 0x50, F2 = 0x51, F3 = 0x52, F4 = 0x53, F5 = 0x54, F6 = 0x55, F7 = 0x56, F8 = 0x57,
	G1 = 0x60, G2 = 0x61, G3 = 0x62, G4 = 0x63, G5 = 0x64, G6 = 0X65, G7 = 0x66, G8 = 0x67,
	H1 = 0x70, H2 = 0x71, H3 = 0x72, H4 = 0x73, H5 = 0x74, H6 = 0x75, H7 = 0x76, H8 = 0x77,
};

enum Row {
	ROW_1 = 0x00,
	ROW_2 = 0x01,
	ROW_3 = 0x02,
	ROW_4 = 0x03,
	ROW_5 = 0x04,
	ROW_6 = 0x05,
	ROW_7 = 0x06,
	ROW_8 = 0x07,
};

enum Column {
	COLUMN_A = 0x00,
	COLUMN_B = 0x10,
	COLUMN_C = 0x20,
	COLUMN_D = 0x30,
	COLUMN_E = 0x40,
	COLUMN_F = 0x50,
	COLUMN_G = 0x60,
	COLUMN_H = 0x70,
};

#endif
