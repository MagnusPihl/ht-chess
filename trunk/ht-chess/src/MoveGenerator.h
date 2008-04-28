#ifndef MOVE_GENERATOR_H
#define MOVE_GENERATOR_H

#include "Board.h"
#include "Move.h"
#include <vector>

class Board;
class Move;

class MoveGenerator {
	
public:
	static void generateMoves(Board &board, Color color, std::vector<Move> &killerMoves, std::vector<Move> &moves);
	
};

#endif MOVE_GENERATOR_H