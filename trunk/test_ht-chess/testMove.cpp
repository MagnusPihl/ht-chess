#include "../ht-chess/src/Move.h"

#define BOOST_TEST_MODULE testMove
#include <boost/test/unit_test.hpp>

struct Fixture
{
	Move m1;

    Fixture() 
    {
		m1 = Move(0, 1, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE);
    } 
};

BOOST_AUTO_TEST_CASE(testConstructor)
{
	Fixture f;
	BOOST_CHECK_EQUAL(f.m1.getOldPosition(), 0);
	BOOST_CHECK_EQUAL(f.m1.getNewPosition(), 1);
	BOOST_CHECK_EQUAL(f.m1.getSpecial(), NO_PIECE);
	BOOST_CHECK_EQUAL(f.m1.getPiece(), KNIGHT_BLACK);
	BOOST_CHECK_EQUAL(f.m1.getContent(), PAWN_WHITE);
}