#ifndef GAME_CONFIGURATION_H
#define GAME_CONFIGURATION_H

#define CONFIGURATION 0

//standard configuration
//move generation
#define USE_FLAT_STACK 0
#define USE_EN_PASSANT 0
#define ONLY_GENERATE_LEGAL_MOVES 0

//minimax
#define USE_MINIMAX_ONLY 0
#define USE_ITERATIVE_DEEPENING 1
#define USE_UNSORTED_STACK 0 //only applies to alphabeta implementation
#define USE_TIME_CONSTRAINT 1

//caching
#define USE_EVALUATION_CACHING 1
#define USE_LINKEDLISTS_WHEN_CACHING 0
#define CACHE_SIZE 2097169
//#define REHASH_CACHE_ON_OVERFLOW 0 //rehashes the cache when overflowing. Don't use with DONT_CLEAR_ON_OVERFLOW
#define CLEAR_CACHE_ON_OVERFLOW 1 //clears the cache when overflowing. when 1 don't set USE_REHASHING and CLEAR_CACHE_ON_NON_REVERSABLE_MOVE
#define CLEAR_CACHE_ON_NON_REVERSABLE_MOVE 0 
//clears the cache when a non reversable move has been executed, meaning a pawn or capture don't use with DONT_CLEAR_ON_OVERFLOW

#define DEFAULT_PLY 5
#define MAX_SEARCH_TIME 30000	//max milliseconds per turn

//instrumentation
#define TEST_PERFORMANCE 0
#define PRINT_NUMBER_OF_EVALUATIONS 0
#define PRINT_CACHE_RETRIEVALS 0
#define PRINT_CACHE_SIZE 0
#define PRINT_CACHE_CLEARS 0
#define PRINT_NUMBER_OF_MOVES_GENERATED 0
#define PRINT_NUMBER_OF_CUTOFFS 0
#define PRINT_SEARCH_TIME 0


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
	#define USE_MINIMAX_ONLY 1
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


//
#if TEST_PERFORMANCE == 1	
	int turnCounter = 0;
	ofstream performanceFile;
	performanceFile.open ("TestPerformance.m");	
	
	performanceFile << "DEFAULT_PLY =" << DEFAULT_PLY << "\n";
	
	#if USE_EVALUATION_CACHING == 1
		#if PRINT_CACHE_SIZE == 1			
			performanceFile << "cacheSize = []; #turn\n"; 
		#endif
		
		#if PRINT_CACHE_CLEARS == 1
			performanceFile << "cacheClears = []; #turn\n"; 
		#endif 
	#endif 
			
	#if USE_ITERATIVE_DEEPENING == 1 && USE_MINIMAX_ONLY == 0
		#if PRINT_NUMBER_OF_EVALUATIONS == 1
			performanceFile << "evaluations = [,DEFAULT_PLY,DEFAULT_PLY]; #turn, iteration, depth\n"; 
		#endif
	
		#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
			performanceFile << "movesGenerated = [,DEFAULT_PLY,DEFAULT_PLY]; #turn, iteration, depth\n"; 
		#endif
	
		#if USE_EVALUATION_CACHING == 1 && PRINT_CACHE_RETRIEVALS == 1
			performanceFile << "cacheRetrievals = [,DEFAULT_PLY,DEFAULT_PLY]; #turn, iteration, depth\n"; 
		#endif
		
		#if PRINT_SEARCH_TIME == 1
			performanceFile << "searchTime = [,DEFAULT_PLY]; #turn, iteration\n"; 
		#endif
	#else
		#if PRINT_NUMBER_OF_EVALUATIONS == 1
			performanceFile << "evaluations = []; #turn\n";
		#endif
	
		#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
			performanceFile << "movesGenerated = [,DEFAULT_PLY]; #turn, depth\n"; 
		#endif
	
		#if USE_EVALUATION_CACHING == 1 && PRINT_CACHE_RETRIEVALS == 1
			performanceFile << "cacheRetrievals = []; #turn\n"; 			
		#endif
		
		#if PRINT_SEARCH_TIME == 1
			performanceFile << "searchTime = []; #turn\n"; 
		#endif
	#endif 	
	
	#if PRINT_NUMBER_OF_CUTOFFS == 1 && USE_MINIMAX_ONLY == 0
		#if USE_ITERATIVE_DEEPENING == 1
			performanceFile << "cutoffs = [,DEFAULT_PLY,DEFAULT_PLY]; #turn, iteration, depth\n"; 
		#else
			performanceFile << "cutoffs = [,DEFAULT_PLY]; #turn, depth\n"; 
		#endif
	#endif
	
#endif
