#ifndef GAME_CONFIGURATION_H
#define GAME_CONFIGURATION_H

#define CONFIGURATION 0

//standard configuration
#define PRINT_MOVE_DESCRIPTIONS 1

//move generation
#define USE_FLAT_STACK 0
#define USE_EN_PASSANT 1
#define ONLY_GENERATE_LEGAL_MOVES 1

//minimax
#define USE_MINIMAX_ONLY 0
#define USE_ITERATIVE_DEEPENING 1
#define USE_UNSORTED_STACK 0 //only applies to alphabeta implementation
#define USE_TIME_CONSTRAINT 0
	
//caching
#define USE_EVALUATION_CACHING 1
#define USE_LINKEDLISTS_WHEN_CACHING 0
#define CACHE_SIZE 3597169
//#define REHASH_CACHE_ON_OVERFLOW 0 //rehashes the cache when overflowing. Don't use with DONT_CLEAR_ON_OVERFLOW
#define CLEAR_CACHE_ON_OVERFLOW 1 //clears the cache when overflowing. when 1 don't set USE_REHASHING and CLEAR_CACHE_ON_NON_REVERSABLE_MOVE
#define CLEAR_CACHE_ON_NON_REVERSABLE_MOVE 0 
//clears the cache when a non reversable move has been executed, meaning a pawn or capture don't use with DONT_CLEAR_ON_OVERFLOW

#define DEFAULT_PLY 5
#define MAX_SEARCH_TIME 29500	//max milliseconds per turn

//instrumentation
#define TEST_PERFORMANCE 0
#define PRINT_NUMBER_OF_EVALUATIONS 1
#define PRINT_CACHE_RETRIEVALS 1
#define PRINT_CACHE_SIZE 1
#define PRINT_CACHE_CLEARS 1
#define PRINT_NUMBER_OF_MOVES_GENERATED 1
#define PRINT_NUMBER_OF_CUTOFFS 1
#define PRINT_SEARCH_TIME 1


//the following configuration will flag warnings because they redefine macros
//if you're using a non microsoft compiler uncomment the original values in the standard configuration
//to resolve the situation.

//minimax
#if CONFIGURATION == 1 
	//minimax with no caching and only legal moves
	#define USE_MINIMAX_ONLY 1
	#define USE_EVALUATION_CACHING 0		
	#define ONLY_GENERATE_LEGAL_MOVES 1	
#endif

#if CONFIGURATION == 2
	//minimax with no caching and illegal moves
	#define USE_MINIMAX_ONLY s1
	#define USE_EVALUATION_CACHING 0
#endif

#if CONFIGURATION == 3
	//minimax with caching and illegal moves
	#define USE_MINIMAX_ONLY 1
#endif

//alphabeta
#if CONFIGURATION == 4
	//alpabeta with no caching and only legal moves	and flat stack
	#define USE_EVALUATION_CACHING 0		
	#define ONLY_GENERATE_LEGAL_MOVES 1	
	#define USE_FLAT_STACK 1
#endif

#if CONFIGURATION == 5
	//alpabeta with no caching and flat stack
	#define USE_FLAT_STACK 1
	#define USE_EVALUATION_CACHING 0
#endif

#if CONFIGURATION == 6
	//alpabeta with only legal moves and flat stack	
	#define ONLY_GENERATE_LEGAL_MOVES 1	
	#define USE_FLAT_STACK 1
#endif

#if CONFIGURATION == 7
	//alpabeta with only legal moves and flat stack	
	#define USE_FLAT_STACK 1
#endif

#if CONFIGURATION == 8
	//alpabeta with en-passant and flat stack
	#define USE_EN_PASSANT 0
	#define USE_FLAT_STACK 1
#endif

#if CONFIGURATION == 9
	#define USE_EN_PASSANT 0
#endif

#endif