#ifndef PIECE_H
#define PIECE_H

#define BLACK 0x10
#define WHITE 0x20
#define PIECE_COLOR (BLACK | WHITE)
#define PIECE_TYPE 0x0F
#define GET_PIECE_COLOR(x) ((x) & PIECE_COLOR)
#define GET_PIECE_TYPE(x) ((x) & PIECE_TYPE)

static const int PIECE_VALUE[7] = {
	10000,	//konge
	900,	//dronning
	500,	//tårn
	300,	//løber
	300,	//springer
	100,	//bonde
	0,	//intet	
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

#endif