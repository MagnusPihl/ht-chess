#ifndef TEST_MOVE
#define TEST_MOVE

//#include "../ht-chess/src/Move.h"
#include <Move.h>
#include <Move.cpp>
#include <Board.h>
#include <Board.cpp>
#include <MoveGenerator.cpp>
#include <LayeredStack.h>
#include <LayeredStack.cpp>


#define BOOST_TEST_MODULE testMove
#include <boost/test/unit_test.hpp>

struct Fixture
{
	Move m1;

    Fixture() 
    {
		m1 = Move(A2, A3, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0);
    } 
};

BOOST_AUTO_TEST_CASE(testConstructor)
{
	Fixture f;
	BOOST_CHECK_EQUAL(f.m1.getOldPosition(), A2);
	BOOST_CHECK_EQUAL(f.m1.getNewPosition(), A3);
	BOOST_CHECK_EQUAL(f.m1.getSpecial(), NO_PIECE);
	BOOST_CHECK_EQUAL(f.m1.getPiece(), KNIGHT_BLACK);
	BOOST_CHECK_EQUAL(f.m1.getContent(), PAWN_WHITE);
}

/*struct Fixture2
{
	LayeredStack<Move, 3> stack;

    Fixture2() 
    {
		stack.add(0, Move(A1, A1, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
		stack.add(1, Move(A2, A2, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
		stack.add(2, Move(A3, A3, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
    } 
};

BOOST_AUTO_TEST_CASE(testLayeredStack)
{
	Fixture2 f;
	LayeredStack<Move, 3>::iterator i;
	
	for (i = f.stack.begin(); i != f.stack.end(); ++i) {
		printf("%i\n", (*i).getNewPosition());
	}
}*/


#endif