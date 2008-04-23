#ifndef BOARD_H
#define BOARD_H

#include "Piece.h"
#include "Position.h"
#include "Move.h"
#include "MoveGenerator.h"
#include <vector>

#define CHECK_OVERFLOW true
#define CONTENT_SIZE 256

#define HAS_MOVED_KING_BLACK 0x01
#define HAS_MOVED_ROOKA_BLACK 0x02
#define HAS_MOVED_ROOKH_BLACK 0x04
#define HAS_MOVED_KING_WHITE 0x10
#define HAS_MOVED_ROOKA_WHITE 0x20
#define HAS_MOVED_ROOKH_WHITE 0x40

#define WHITE_KING_MOVED ((hasMoved & HAS_MOVED_KING_WHITE) == HAS_MOVED_KING_WHITE)
#define BLACK_KING_MOVED ((hasMoved & HAS_MOVED_KING_BLACK) == HAS_MOVED_KING_BLACK)
#define BLACK_ROOKA_MOVED ((hasMoved & HAS_MOVED_ROOKA_BLACK) == HAS_MOVED_ROOKA_BLACK)
#define BLACK_ROOKH_MOVED ((hasMoved & HAS_MOVED_ROOKH_BLACK) == HAS_MOVED_ROOKH_BLACK)
#define WHITE_ROOKA_MOVED ((hasMoved & HAS_MOVED_ROOKA_WHITE) == HAS_MOVED_ROOKA_WHITE)
#define WHITE_ROOKH_MOVED ((hasMoved & HAS_MOVED_ROOKH_WHITE) == HAS_MOVED_ROOKH_WHITE)

#define BLACK_INDEX 0
#define WHITE_INDEX 1

using namespace std;
class Move;

class Board
{
private:
	vector<ColoredPiece> content;
	int hasMoved;
	int enPassantPosition;
	int kingPosition[2]; //0 = black, 1 = white	
	int materialValue[2];
	bool hasCastled[2]; 	
	std::vector<Move> moveList;

public:

	friend class Move;

	Board();
	
	Board(const Board& rhs);

	Board& operator= (Board& rhs);

	ColoredPiece & operator[](int pos);
	const ColoredPiece & operator[](int pos) const;

	~Board();

	void testMethod();

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
	void setPositionOfKing(int position, int color);
	int getPositionOfKing(int color);
	/*bool hasRookAMoved(int color);
	bool hasRookBMoved(int color);
	int getEnPassantPosition();
	void setEnPassantPosition(int position);*/
	int getThreatOf(int position, int color);
	
	bool isStalemate(int color);
	bool isCheck(int color);
	bool isCheckmate(int color);
	bool hasPerformedCastling(int color);
	int getMaterialValue(int color);
};

#endif
