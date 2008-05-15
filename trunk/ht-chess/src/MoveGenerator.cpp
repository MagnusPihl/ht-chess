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
			//printf("%i, %i\n", x, y);
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
		
	#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1				
		#if USE_ITERATIVE_DEEPENING == 1 && USE_MINIMAX_ONLY == 0
			test().movesGenerated[test().iteration-1] += moves.size();			
		#else
			test().movesGenerated += moves.size();
		#endif
	#endif
}

void MoveGenerator::generateMoves(Board &board, Color color, LayeredStack<Move, STACK_SIZE> &moves, Position pos) {			
	int x, y;		
	Position position;
	
	for (x = 0; x < ROW_COUNT; ++x) {
		for (y = 0; y < COLUMN_COUNT; ++y) {	
			position = GET_POSITION(x,y);
			if (GET_PIECE_COLOR(board.getItemAt(position)) == color) {
				board.getMovesFromPosition(position, moves);
			}			
		}
	}
	     
    for(LayeredStack<Move, STACK_SIZE>::iterator itr = moves.begin(); itr != moves.end(); ++itr) 
    {
        if((*itr).getNewPosition() == pos)
        {
            moves.add(STACK_LAST_TURN, (*itr));
            itr.erase();
        }
    }
   
	#if PRINT_NUMBER_OF_MOVES_GENERATED == 1 && TEST_PERFORMANCE == 1				
		#if USE_ITERATIVE_DEEPENING == 1 && USE_MINIMAX_ONLY == 0
			test().movesGenerated[test().iteration-1] += moves.size();			
		#else
			test().movesGenerated += moves.size();
		#endif
	#endif
}

void MoveGenerator::generateLegalMoves(Board &board, Color color, Position position, LayeredStack<Move, STACK_SIZE> &moves) {			
	if (GET_PIECE_COLOR(board.getItemAt(position)) == color) {
		board.getMovesFromPosition(position, moves);
	}
	
	ColoredPiece threat;
	
	for(LayeredStack<Move, STACK_SIZE>::iterator itr = moves.begin(); itr != moves.end(); ++itr) 
    {
		(*itr).execute(board);
		threat = board.getThreatOf(board.getPositionOfKing(color),color);					
		(*itr).unexecute(board);
		
		if (threat != NO_PIECE) {
			itr.erase();
		}		
    }
}

#endif MOVE_GENERATOR_H