#ifndef MOVE_GENERATOR_H
#define MOVE_GENERATOR_H

#include "Board.h"
#include "Move.h"
#include "LayeredStack.h"
#include <vector>

class Board;
class Move;

class MoveGenerator {
	
public:
	static void generateMoves(Board &board, Color color, LayeredStack<Move, STACK_SIZE> &moves);
	
};

#endif MOVE_GENERATOR_H