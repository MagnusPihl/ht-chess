#ifndef MOVE_GENERATOR_H
#define MOVE_GENERATOR_H

#include "Move.h"
#include "Board.h"
#include "LayeredStack.h"
#include <vector>

class Board;
class Move;

class MoveGenerator
{
//private:
//	Move nextMove;
//	bool usedNextMove;
	
public:
	MoveGenerator();
	static void generateMoves(Board &board, Color color, LayeredStack<Move, STACK_SIZE> &moves);
	static void generateMoves(Board &board, Color color, LayeredStack<Move, STACK_SIZE> &moves, Position pos);
	static void generateLegalMoves(Board &board, Color color, Position position, LayeredStack<Move, STACK_SIZE> &moves);
	void setNextMove(Move move);
};

#endif MOVE_GENERATOR_H
