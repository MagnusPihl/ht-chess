#ifndef VALIE_CACHE_H
#define VALIE_CACHE_H

#include <cstdio>
#include <vector>
#include <list>
#include "Board.h"

#if USE_LINKEDLISTS_WHEN_CACHING == 0	
	#define LIST_TYPE vector
#else
	#define LIST_TYPE list
#endif	

using namespace std;

unsigned int nextPrime( size_t nElements );

class ValueCache {
public:	

	//constructor
	explicit ValueCache( int size = CACHE_SIZE, double load = 2.0 ) 
		: currentSize(0), loadFactor(load) { 	
		table = new vector<LIST_TYPE<BoardValue>>(nextPrime(size));				
		maxLoad = loadFactor * table->size();
	}

	//copyconstructor
	ValueCache(const ValueCache &rhs)
		: currentSize(rhs.currentSize), loadFactor(rhs.loadFactor), maxLoad(rhs.maxLoad) { 		
		
		table = new vector<LIST_TYPE<BoardValue>>(0);					
		
		if (!rhs.table->empty()) {
			vector<LIST_TYPE<BoardValue>>::iterator end = rhs.table->end();
			
			for (vector<LIST_TYPE<BoardValue>>::iterator i = rhs.table->begin(); i != end; ++i) {
				table->push_back(*i);
			}
		}
	}

	//assignment operator
	const ValueCache & operator=(const ValueCache &rhs) {
		if (this != &rhs) {
			currentSize = rhs.currentSize;			
			loadFactor = rhs.loadFactor;
			table->clear();
			maxLoad = rhs.maxLoad;
						
			vector<LIST_TYPE<BoardValue>>::iterator end = rhs.table->end();
			for (vector<LIST_TYPE<BoardValue>>::iterator i = rhs.table->begin(); i != end; ++i) {
				table->push_back(*i);
			}
		}
		return *this;
	}

	//destructor
	~ValueCache() {
		delete table;
	}

	// insert key, returns true if inserted else false
	bool insert(int _hash, int _lock, int _value) {
		size_t hash = _hash % table->size();
		
#if CLEAR_CACHE_ON_OVERFLOW == 1
		if (currentSize > maxLoad) {
			//printf("deleting");
			clear();
		}		
#endif
		
		(*table)[hash].push_back(BoardValue(_hash, _lock, _value));		
		currentSize++;

		return true;
	}
	
	// insert key, returns true if inserted else false
	int get(int _hash, int _lock) {
		size_t hash = _hash % table->size();		
		
		LIST_TYPE<BoardValue>::iterator end = (*table)[hash].end();

		for (LIST_TYPE<BoardValue>::iterator i = (*table)[hash].begin(); i != end; ++i) {			
			if (((*i).hash == _hash)&&((*i).lock == _lock)) {						
				//printf("found");
				return (*i).value;
			}
		}
		
		return INVALID_BOARD_VALUE;
	}

	//remove key; return true if key is removed else false
	bool erase(int _hash, int _lock) { 
		unsigned long hash = _hash % table->size();
			
		LIST_TYPE<BoardValue>::iterator end = (*table)[hash].end();
		
		for (LIST_TYPE<BoardValue>::iterator i = (*table)[hash].begin(); i != end; ++i) {
			if (((*i).hash == _hash)&&((*i).lock == _lock)) {					
				(*table)[hash].erase(i);					
				currentSize--;
				return true;
			}
		}
		
		return false;		
	}

	//get the load factor of the ValueCache
	float getLoad() {
		return currentSize / (float)table->size();
	}
		
	// return the number of items in the table
	int size() {
		return currentSize;
	}

	//check wether table is empry
	bool empty() {
		return (currentSize == 0);
	}
	
	//remove all keys
	void clear() {
		
		vector<LIST_TYPE<BoardValue>>::iterator end = table->end();
		
		for (vector<LIST_TYPE<BoardValue>>::iterator i = table->begin(); i != end; ++i) {		
			(*i).clear();
		}

		currentSize = 0;
	}

	//set the maximum load factor
	void setLoadFactor(float load) {
		loadFactor = load;
		maxLoad = load * table->size();
	}

	//get capacity of ValueCache
	int getCapacity() {
		return table->capacity();
	}

private:
		
	vector<LIST_TYPE<BoardValue>> *table; // The array of Lists, the // STL list is used
	int currentSize; // Number og items in // the hash table
	double loadFactor; //Allowable fill rate. 
	double maxLoad; //Pre calculated number of items that are allowed in list before rehash.	
};

// this method has stolen been stolen from Henrik Kold Mikkelsen, during our J2C course.
// Find the smallest prime greather than or equal to nElements
// Return: The prime >= nElements. If the not found the largest prime is returned
unsigned int nextPrime( size_t nElements )
{
// List of primes such that s_anPrimes[i] is the smallest prime greater than 2^(4+i/3.0)
static const unsigned int s_anPrimes[] =
{
  17, 23, 29, 37, 41, 53, 67, 83, 103, 131, 163, 211, 257, 331, 409, 521, 647, 821, 
  1031, 1291, 1627, 2053, 2591, 3251, 4099, 5167, 6521, 8209, 10331, 
  13007, 16411, 20663, 26017, 32771, 41299, 52021, 65537, 82571, 104033, 
  131101, 165161, 208067, 262147, 330287, 416147, 524309, 660563, 
  832291, 1048583, 1321139, 1664543, 2097169, 2642257, 3329023, 4194319, 
  5284493, 6658049, 8388617, 10568993, 13316089, 16777259, 21137981, 26632181,
  33554467, 42276011, 53264347, 67108879, 84551941, 106528699, 134217757,
  169103741, 213057371, 268435459, 338207497, 426114739
};

int numPrimes = sizeof (s_anPrimes)/sizeof(unsigned int);

// Find the smallest prime greater than or equal to our estimate
int iPrime = 0;
while( ( nElements > s_anPrimes[iPrime] ) && ( iPrime < (numPrimes-1) ) )
  iPrime++;

// if the maximum prime in table is reached this value is returned
return( s_anPrimes[iPrime] );
}

#endif
