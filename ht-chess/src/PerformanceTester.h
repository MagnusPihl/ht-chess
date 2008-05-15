#ifndef PERFORMANCE_TESTER_H
#define PERFORMANCE_TESTER_H

#include "GameConfiguration.h"

#if TEST_PERFORMANCE == 1		
	#include <fstream>		

	class PerformanceTester {		
					
		void initTest() {			
			
			#if USE_EVALUATION_CACHING == 1
				#if PRINT_CACHE_SIZE == 1			
					out << "cacheSize = []; %turn" << std::endl; 
				#endif
				
				#if PRINT_CACHE_CLEARS == 1
					out << "cacheClears = []; %turn" << std::endl; 
				#endif
				
				#if PRINT_CACHE_CLEARS == 1
					out << "cacheClears = []; %turn, iteration, depth" << std::endl; 
				#endif		 
			#endif 
								
			#if PRINT_NUMBER_OF_EVALUATIONS == 1
				out << "evaluations = []; %turn, iteration, depth" << std::endl; 
			#endif
		
			#if PRINT_NUMBER_OF_MOVES_GENERATED == 1
				out << "movesGenerated = []; %turn, iteration, depth" << std::endl; 
			#endif
		
			#if PRINT_SEARCH_TIME == 1
				out << "searchTime = []; %turn, iteration" << std::endl; 
			#endif
			
			#if PRINT_NUMBER_OF_CUTOFFS == 1 && USE_MINIMAX_ONLY == 0				
				out << "cutoffs = []; %turn, iteration, depth" << std::endl; 				
			#endif			
		}							
		
	public:	
		
		#if USE_ITERATIVE_DEEPENING == 1 && USE_MINIMAX_ONLY == 0
			int iteration;
		#endif 
	
		#if USE_ITERATIVE_DEEPENING == 1
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