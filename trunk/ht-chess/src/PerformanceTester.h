#ifndef PERFORMANCE_TESTER_H
#define PERFORMANCE_TESTER_H

#include "GameConfiguration.h"

#if TEST_PERFORMANCE == 1		
	#include <fstream>		

	class PerformanceTester {		
					
		void initTest() {		
			out << "%configuration << \n";
			out << "%move generation\n";
			out << "USE_FLAT_STACK = " << USE_FLAT_STACK << std::endl;
			out << "USE_EN_PASSANT = " << USE_EN_PASSANT << std::endl;
			out << "ONLY_GENERATE_LEGAL_MOVES = " << ONLY_GENERATE_LEGAL_MOVES << std::endl;
			
			out << "\n%minimax\n";
			out << "USE_MINIMAX_ONLY = " << USE_MINIMAX_ONLY << std::endl;
			out << "USE_ITERATIVE_DEEPENING = " << USE_ITERATIVE_DEEPENING << std::endl;
			out << "USE_UNSORTED_STACK = " << USE_UNSORTED_STACK << std::endl;
			out << "USE_TIME_CONSTRAINT = " << USE_TIME_CONSTRAINT << std::endl;
						
			out << "\n%caching\n";
			out << "USE_EVALUATION_CACHING = " << USE_EVALUATION_CACHING << std::endl;
			out << "USE_LINKEDLISTS_WHEN_CACHING = " << USE_LINKEDLISTS_WHEN_CACHING << std::endl;
			out << "CACHE_SIZE = " << CACHE_SIZE << std::endl;
			out << "CLEAR_CACHE_ON_OVERFLOW = " << CLEAR_CACHE_ON_OVERFLOW << std::endl;
			out << "CLEAR_CACHE_ON_NON_REVERSABLE_MOVE = " << CLEAR_CACHE_ON_NON_REVERSABLE_MOVE << std::endl;
	
			out << "\n%caching\n";
			out << "DEFAULT_PLY = " << DEFAULT_PLY << std::endl;
			out << "MAX_SEARCH_TIME = " << MAX_SEARCH_TIME << std::endl;
			
			out << "\n%variables\n";
			#if USE_EVALUATION_CACHING == 1
				#if PRINT_CACHE_SIZE == 1			
					out << "cacheSize = [];" << std::endl; 
				#endif
				
				#if PRINT_CACHE_CLEARS == 1
					out << "cacheClears = [];" << std::endl; 
				#endif
				
				#if PRINT_CACHE_CLEARS == 1
					out << "cacheClears = [];" << std::endl; 
				#endif		 
			#endif 
								
			#if PRINT_NUMBER_OF_EVALUATIONS == 1
				out << "evaluations = [];" << std::endl; 
			#endif
		
			#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
				out << "movesGenerated = [];" << std::endl; 
			#endif
		
			#if PRINT_SEARCH_TIME == 1
				out << "searchTime = [];" << std::endl; 
			#endif
			
			#if PRINT_NUMBER_OF_CUTOFFS == 1 && USE_MINIMAX_ONLY == 0				
				out << "cutoffs = [];" << std::endl; 				
			#endif			
		}							
		
	public:	
		
		#if USE_ITERATIVE_DEEPENING == 1 && USE_MINIMAX_ONLY == 0
			int iteration;
			
			#if PRINT_NUMBER_OF_EVALUATIONS == 1
				int evaluations[DEFAULT_PLY - 1];
			#endif
		
			#if PRINT_SEARCH_TIME == 1
				int time[DEFAULT_PLY - 1];			
			#endif
			
			#if USE_EVALUATION_CACHING == 1
				
				#if PRINT_CACHE_RETRIEVALS == 1
					int cacheRetrievals[DEFAULT_PLY - 1];
				#endif
				
				#if PRINT_CACHE_SIZE == 1
					int cacheSize[DEFAULT_PLY - 1];	
				#endif
				
				#if PRINT_CACHE_CLEARS == 1
					int cacheClears[DEFAULT_PLY - 1];	
				#endif
						
			#endif
						
			#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
				int movesGenerated[DEFAULT_PLY - 1];	
			#endif			
			
			#if PRINT_NUMBER_OF_CUTOFFS == 1
				int cutoffs[DEFAULT_PLY - 1];				
			#endif
						
		#else
			#if PRINT_SEARCH_TIME == 1
				int time;			
			#endif
			
			#if PRINT_NUMBER_OF_EVALUATIONS == 1
				int evaluations;
			#endif
			
			#if USE_EVALUATION_CACHING == 1
				#if PRINT_CACHE_RETRIEVALS == 1
					int cacheRetrievals;
				#endif
				
				#if PRINT_CACHE_SIZE == 1
					int cacheSize;
				#endif
				
				#if PRINT_CACHE_CLEARS == 1
					int cacheClears;	
				#endif
			#endif
			
			#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
				int movesGenerated;
			#endif			
			
			#if PRINT_NUMBER_OF_CUTOFFS == 1
				int cutoffs;				
			#endif
		#endif

		int turn;	
		std::ofstream out;						
				
		PerformanceTester() : 
			turn(0)
			{
			out.open("TestPerformance.m", std::ios_base::trunc | std::ios_base::out);
			initTest();
		}		
		
		~PerformanceTester() {
			out.close();
		}																		
	};
	
	static PerformanceTester & test() {
		static PerformanceTester testObj = PerformanceTester();
		return testObj;
	}
	
#endif


#endif