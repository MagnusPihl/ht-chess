#ifndef MOVE_GENERATOR_CPP
#define MOVE_GENERATOR_CPP

#include "MoveGenerator.h"

MoveGenerator::MoveGenerator()
{
	//usedNextMove = true;
}

void MoveGenerator::setNextMove(Move move)
{
	//nextMove = move;
	//usedNextMove = false;
}

void MoveGenerator::generateMoves(Board &board, Color color, LayeredStack<Move, STACK_SIZE> &moves) {			
	int x, y;		
	Position position;
	
	for (x = 0; x < ROW_COUNT; ++x) {
		for (y = 0; y < COLUMN_COUNT; ++y) {	
			position = GET_POSITION(x,y);
			if (GET_PIECE_COLOR(board.getItemAt(position)) == color) {
				board.getMovesFromPosition(position, moves);
				//if(!usedNextMove)
				//{
				//	LayeredStack<Move, STACK_SIZE>::iterator itr;
				//	for(itr = moves.begin(); itr != moves.end(); itr++)
				//	{
				//		if((*itr) == nextMove)
				//		{
				//			usedNextMove = true;
				//			//Do shit
				//		}
				//	}
				//}
			}			
		}
	}
}

#endif MOVE_GENERATOR_H