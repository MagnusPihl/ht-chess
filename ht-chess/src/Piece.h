#ifndef PIECE_H
#define PIECE_H

#include <string>

/**
* Returns true if color is equal to wanted color
*/
#define IS_COLOR(color, wantedColor) (((color) & PIECE_COLOR) == (wantedColor))

/**
* Returns true if color is BLACK
*/
#define IS_BLACK(color) (((color) & PIECE_COLOR) == BLACK)

/**
* Returns true if color is WHITE
*/
#define IS_WHITE(color) (((color) & PIECE_COLOR) == WHITE)

/**
* Bit mask for colors
*/
#define PIECE_COLOR (BLACK | WHITE)

/**
* Bit mask for piece type
*/
#define PIECE_TYPE 0x0F

/**
* Returns opposite WHITE if BLACK, BLACK if WHITE
*/
#define GET_OPPOSITE_COLOR(color) ((Color)((color) ^ PIECE_COLOR))

/**
* Returns the color of a piece
*/
#define GET_PIECE_COLOR(x) ((Color)((x) & PIECE_COLOR))

/**
* Returns the piece type of a piece
*/
#define GET_PIECE_TYPE(x) ((Piece)((x) & PIECE_TYPE))

/**
* Returns the combined ColoredPiece
*/
#define GET_COLORED_PIECE(type, color) ((ColoredPiece)((type) | (color)))

static const int PIECE_VALUE[7] = {
	10000,	//konge
	900,	//dronning
	500,	//tårn
	300,	//løber
	300,	//springer
	100,	//bonde
	0,	//intet	
};


enum Color 
{
	NO_COLOR = 0x00,
	BLACK = 0x10,
	WHITE = 0x20
};

enum Piece
{	
	KING = 0,	//konge
	QUEEN = 1,	//dronning	
	ROOK = 2,	//tårn
	BISHOP = 3,	//løber
	KNIGHT = 4,	//springer
	PAWN = 5,	//bonde
	NONE = 6,	//intet
	PIECE_TYPE_COUNT = 6
};

enum ColoredPiece
{
	KING_BLACK = (BLACK | KING),		//konge
	KING_WHITE = (WHITE | KING),	
	QUEEN_BLACK = (BLACK | QUEEN),	//dronning
	QUEEN_WHITE = (WHITE | QUEEN),
	KNIGHT_BLACK = (BLACK | KNIGHT),	//springer
	KNIGHT_WHITE = (WHITE | KNIGHT),
	BISHOP_BLACK = (BLACK | BISHOP),	//løber
	BISHOP_WHITE = (WHITE | BISHOP),
	ROOK_BLACK = (BLACK | ROOK),		//tårn
	ROOK_WHITE = (WHITE | ROOK),
	PAWN_BLACK = (BLACK | PAWN),		//bonde
	PAWN_WHITE = (WHITE | PAWN),
	NO_PIECE = NONE
};

static const char PIECE_CHARACTERS[] =
{
	'k',	//konge
	'q',	//dronning
	'r',	//tårn
	'b',	//løber
	'n',	//springer
	'p',	//bonde
	' '	//intet	
};

static const char* PIECE_NAMES[] =
{
	"King",	//konge
	"Queen",	//dronning
	"Rook",	//tårn
	"Bishop",	//løber
	"Knight",	//springer
	"Pawn",	//bonde
	""	//intet	
};

static const char* COLOR_NAMES[] =
{
	"Black",	//sort
	"White",	//hvid
};

#endif