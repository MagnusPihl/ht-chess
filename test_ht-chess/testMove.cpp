//#include "../ht-chess/src/Move.h"
#include <Move.h>
#include <Move.cpp>
#include <Board.h>
#include <Board.cpp>
#include <MoveGenerator.cpp>

#define BOOST_TEST_MODULE testMove
#include <boost/test/unit_test.hpp>

struct Fixture
{
	Move m1;

    Fixture() 
    {
		m1 = Move(A2, A3, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION);
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