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

#define MAX_TURNS 100

using namespace std;
class Move;

class Board
{
friend class Move;

private:

	/**
	* 0x88 representation of board contents	
	*/
	vector<ColoredPiece> content;
	
	/**
	* Has moved keeps track of whether the white and black, rooks and kings have moved
	*/
	int hasMoved;
	
	/**
	* Not finished yet
	*/
	Position enPassantPosition;
	
	/**
	* Keeps track of the positions of the black and white kings on the board.
	* Use BLACK_INDEX and WHITE_INDEX to index the array. 
	* 0 = black, 1 = white	
	*/
	Position kingPosition[2];
	
	/**
	* Keeps track of the material value of the black and white. 
	* The value is without the king.
	* Use BLACK_INDEX and WHITE_INDEX to index the array. 
	* 0 = black, 1 = white	
	*/
	int materialValue[2];
	
	/**
	* Keeps track of whether the black and white have used their castling moves yet.
	* Use BLACK_INDEX and WHITE_INDEX to index the array. 
	* 0 = black, 1 = white	
	*/
	bool hasCastled[2]; 	
	
	/**
	* List of moves used to calculate stale- and checkmate.
	*/
	std::vector<Move> moveList;
	
	/**
	* The number of plys from last pawn move, or capture allowed is 50 before draw occurs.
	* This field keeps track of how many moves has been done since the last ireversible move.
	* 2 moves equals 1 ply, therefore the game should be a drawn once this field increments to 100.
	*/
	int reversableMoves;
	
	/**
	* Checks that the move does not endanger the king of the specified color
	* If it doesn't the move is add to the supplied vector
	* param: Color, color - player color
	* param: Move&, move - the move to be evaluated
	* param: vector<Move>&, moves - list of moves to add move to when evaluated
	*/
	void testAndAddMove(Color color, Move &move, std::vector<Move> &moves);					

public:	

	/**
	* Constructor. Create new board with initial positions. 	
	*/
	Board();
		
	/**
	* Copy constructor, copies contents of parameter board 	
	* param: Board&, rhs - board to copy
	*/
	Board(const Board& rhs);

	/**
	* Copies board content from right to left hand side board.
	* Overloaded assignment operator. Cascading
	* param: Board&, rhs - right hand side board
	* return: Board& - reference to assignee board
	*/
	Board& operator= (Board& rhs);

	/**
	* Enables fast read write access to board contents.
	* Overloaded index operator. No overflow checking!
	* param: Position, position - position 
	* return: ColoredPiece& - Reference to board position
	*/
	ColoredPiece & operator[](Position position);
					
	//const ColoredPiece & operator[](int pos) const;

	/**
	* Destructor
	*/
	~Board();

	
	/**
	* Gets the piece if any at the specified position.
	* if CHECK_OVERFLOW is defined then this function will throw an exception
	* if position is out of bounds.
	* param: Position, position - position 
	* return: ColoredPiece - NO_PIECE if no piece at position, else Piece | Color
	*/		
	ColoredPiece getItemAt(Position position);

	/**
	* Get the contents of the board
	*/		
	vector<ColoredPiece> & getContent();

	/**
	* Add all legal moves that does not endanger the king to the provided vector
	* The detects piece type and color from position. If no piece is present at
	* the specified position nothing is added.	
	* param: Position, position - position of piece
	* param: vector<Move>&, moves - vector to add moves to
	* param: vector<Move>&, moves - vector to add moves to
	*/		
	void getMovesFromPosition(Position position, vector<Move> &moves);
	
	
	/**	
	*  x
	* xxx
	*  0
	* 
	* Add all legal moves that does not endanger the king to the provided vector
	* The pawn must be present at the specified position. The color of the piece
	* is derived from the position.
	* 
	* param: Position, position - position of the pawn
	* param: vector<Move>&, move - vector to add moves to
	*/
	void getPawnMovesFrom(Position position, vector<Move> &moves);
		
		
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
	* param: Position, position - position of the knight
	* param: vector<Move>, move - vector to add moves to
	*/	
	void getKnightMovesFrom(Position position, vector<Move> &moves);
	
	/**
	* x x
	*  0
	* x x
	*	
	* Add all legal moves that does not endanger the king to the provided vector
	* The bishop must be present at the specified position. The color of the piece
	* is derived from the position.
	* param: Position, position - position of the bishop
	* param: vector<Move>, move - vector to add moves to
	*/	
	void getBishopMovesFrom(Position position, vector<Move> &moves);
	
	/**
	*  x
	* x0x
	*  x
	*	
	* Add all legal moves that does not endanger the king to the provided vector
	* The rook must be present at the specified position. The color of the piece
	* is derived from the position.
	* param: Position, position - position of the rook
	* param: vector<Move>&, move - vector to add moves to
	*/	
	void getRookMovesFrom(Position position, vector<Move> &moves);
	
	/**
	* xxx
	* x0x
	* xxx
	*	
	* Add all legal moves that does not endanger the king to the provided vector
	* The queen must be present at the specified position. The color of the piece
	* is derived from the position.
	* param: Position, position - position of the queen
	* param: vector<Move>&, move - vector to add moves to
	*/	
	void getQueenMovesFrom(Position position, vector<Move> &moves);
	
	/**
	* xxx
	* x0x
	* xxx
	*
	* Add all legal moves that does not endanger the king to the provided vector
	* The king must be present at the specified position. The color of the piece
	* is derived from the position.
	* This function also creates king and queenside castling moves
	* param: Position, position - position of the king
	* param: vector<Move>, move - vector to add moves to
	*/	
	void getKingMovesFrom(Position position, vector<Move> &moves);	
		
	/**
	* Reset board to initial start position. Black pieces in row 7 and 8.
	* White piece in row 1 and 2.
	*/
	void resetBoard();	
	
	/**
	* Tells whether the king of the specified color has moved	
	* param: Color, color - player color
	* return: bool - true if the king has moved, false otherwise
	*/
	bool hasKingMoved(Color color);	
	
	/**
	* Set the position of a players king. Note this position is only a reference
	* it doesn't update the board.
	* param: Position, position - position of king
	* param: Color, color - player color
	*/
	void setPositionOfKing(Position position, Color color);
	
	/**
	* Get the position of a players king	
	* param: Color, color - player color
	* return: Position - position of king
	*/
	Position getPositionOfKing(Color color);
	
	/**
	* Tells whether the specified position is under attack for the specified player
	* param: Position, position - position
	* param: Color, color - player color
	* return: ColoredPiece - the least valued piece threatening the selected position
	*	values goes down from king through queen, rook, bishop, knight to pawn.
	*/
	ColoredPiece getThreatOf(Position position, Color color);
	
	/**
	* Tells whether the specified player is stalemate	
	* param: Color, color - Player color
	* return: bool - true if player is stalemate
	*/
	bool isStalemate(Color color);
	
	/**	
	* Tells whether the specified player is in check
	* param: Color, color - Player color
	* return: bool - true if player is in check
	*/
	bool isCheck(Color color);
	
	/**
	* Tells whether the specified player is checkmate	
	* param: Color, color - Player color
	* return: bool - true if player is in checkmate
	*/
	bool isCheckmate(Color color);
	
	/**
	* Returns whom if any player is stalemate
	* return: int - 0 if no one is stalemate, 
	*	BLACK if black player is stalemate
	*	or WHITE if white player is stalemate,
	*/
	int isStalemate();
	
	/**
	* Returns whom if any player is checkmate	
	* return: int - 0 if no one is checkmate, 
	*	BLACK if black player is checkmate
	*	or WHITE if white player is checkmate,
	*/
	int isCheckmate();
	
	/**
	* Returns true if castling has performed på specified player
	* param: Color, color - Player color
	* return: bool
	*/
	bool hasPerformedCastling(Color color);
	
	/**
	* Returns the sum value of the piece the specified color has left
	* The material value does not include the king
	* param: Color, color - Player color
	* return: int, material value - Positive value of all piece except the king
	*/
	int getMaterialValue(Color color);
};

#endif
