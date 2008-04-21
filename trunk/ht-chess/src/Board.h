#ifndef BOARD_H
#define BOARD_H

#include "Piece.h"
#include "Position.h"
#include "Move.h"
#include <vector>

#define CHECK_OVERFLOW true
#define CONTENT_SIZE 256

using namespace std;
class Move;

class Board
{
private:
	vector<ColoredPiece> content;
	bool blackKingMoved;
	bool whiteKingMoved;
	int enPassantPosition;

public:

	friend class BoardRenderer;

	Board();
	
	Board(const Board& rhs);

	Board& operator= (Board& rhs);

	~Board();

	/**
	/* Should we do boundary check here?
	/**/
	ColoredPiece getItemAt(int position);

	vector<ColoredPiece> & getContent();
	
	void getMovesFromPosition(int position, vector<Move> &moves);
	
	void getPawnMovesFrom(int position, vector<Move> &moves);
		
		
	/**
	*  x x
	* x   x
	*   0
	* x   x
	*  x x
	*/	
	void getKnightMovesFrom(int position, vector<Move> &moves);
	
	/**
	* x x
	*  0
	* x x
	*/	
	void getBishopMovesFrom(int position, vector<Move> &moves);
	
	/**
	*  x
	* x0x
	*  x
	*/	
	void getRookMovesFrom(int position, vector<Move> &moves);
	
	/**
	* xxx
	* x0x
	* xxx
	*/	
	void getQueenMovesFrom(int position, vector<Move> &moves);
	
	/**
	* xxx
	* x0x
	* xxx
	* this function does not check if the king can be taken!
	*/	
	void getKingMovesFrom(int position, vector<Move> &moves);	
	
	void resetBoard();	
	bool hasKingMoved(int color);	
	int getEnPassantPosition();
	void setEnPassantPosition(int position);
};

#endif
