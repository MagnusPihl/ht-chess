/*
	Kursus: J2C++
	Opgave: Mandatory Assignment 6, HashTable
	Forfatter: Lau Maack-Krommes
	Studienummer: 5709
	Dato: 26-11-2007
	Version 1.0
*/
#ifndef _HashTable_
#define _HashTable_

#include <cstdio>
#include <list>
#include <vector>
#include "Board.h"

//#define CONTENT_TYPE std::pair<int, int, int>

using namespace std;

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




//key type is always int in this version
//template <typename KEY_CONTENT_TYPE = std::pair<int, int, int>>
class HashTable {
public:	

	//constructor
	explicit HashTable( int size = 4194319/*1048583*/, double load = 1.0 ) 
		: currentSize(0), collisions(0), /*rehashes(0),*/ loadFactor(load) { 
		table = new vector<list<BoardValue>>(nextPrime(size));		
		//distribution.resize(table->size(),0);
		maxLoad = loadFactor * table->size();
	}

	//copyconstructor
	HashTable(const HashTable &rhs)
		: currentSize(rhs.currentSize), collisions(rhs.collisions), loadFactor(rhs.loadFactor), maxLoad(rhs.maxLoad) { 
		/*distribution = rhs.distribution;*/
		table = new vector<list<BoardValue>>(0);					
		
		if (!rhs.table->empty()) {
			vector<list<BoardValue>>::iterator end = rhs.table->end();
			
			for (vector<list<BoardValue>>::iterator i = rhs.table->begin(); i != end; ++i) {
				table->push_back(*i);
			}
		}
	}

	//assignment operator
	const HashTable & operator=(const HashTable &rhs) {
		if (this != &rhs) {
			currentSize = rhs.currentSize;			
			loadFactor = rhs.loadFactor;
			table->clear();
			/*distribution = rhs.distribution;
			rehashes = rhs.rehashes;*/
			collisions = rhs.collisions;
			maxLoad = rhs.maxLoad;
						
			vector<list<BoardValue>>::iterator end = rhs.table->end();
			for (vector<list<BoardValue>>::iterator i = rhs.table->begin(); i != end; ++i) {
				table->push_back(*i);
			}
		}
		return *this;
	}

	//destructor
	~HashTable() {
		delete table;
	}

	// insert key, returns true if inserted else false
	bool insert(int _hash, int _lock, int _value) {
		size_t hash = _hash % table->size();
		
		if (currentSize > maxLoad) {
			clear();
		}
		
		/*if (!(*table)[hash].empty()) {

			list<BoardValue>::iterator end = (*table)[hash].end();

			for (list<BoardValue>::iterator i = (*table)[hash].begin(); i != end; ++i) {			
				if (((*i).hash == _hash)&&((*i).lock == _lock)) {	
					collisions++;
					return false;
				}
			}
		}*/
		
		(*table)[hash].push_back(BoardValue(_hash, _lock, _value));		
		currentSize++;

		/*if (currentSize > maxLoad) {
			rehash(table->size() << 1);			
		} /*else {
			distribution[hash]++;
		}*/
		return true;
	}
	
	// insert key, returns true if inserted else false
	int get(int _hash, int _lock) {
		size_t hash = _hash % table->size();
		
		//if (!(*table)[hash].empty()) {

			list<BoardValue>::iterator end = (*table)[hash].end();

			for (list<BoardValue>::iterator i = (*table)[hash].begin(); i != end; ++i) {			
				if (((*i).hash == _hash)&&((*i).lock == _lock)) {						
					//printf("found");
					return (*i).value;
				}
			}
		//}
		
		return INVALID_BOARD_VALUE;
	}

	//remove key; return true if key is removed else false
	bool erase(int _hash, int _lock) { 
		unsigned long hash = _hash % table->size();

		//if (!(*table)[hash].empty()) {
			
			list<BoardValue>::iterator end = (*table)[hash].end();
			
			for (list<BoardValue>::iterator i = (*table)[hash].begin(); i != end; ++i) {
				if (((*i).hash == _hash)&&((*i).lock == _lock)) {					
					(*table)[hash].erase(i);
					//distribution[hash]--;
					currentSize--;
					return true;
				}
			}
		//}
		return false;		
	}

	// return true if the key exist else false
	/*bool find(const BoardValue &key) { 
		unsigned long hash = key.hash % table->size();

		if (!(*table)[hash].empty()) {			
			list<BoardValue>::iterator i = (*table)[hash].begin();
			list<BoardValue>::iterator end = (*table)[hash].end();
			while (i != end) {
				if ((*i).hash == key) {		
					return true;
				}
				i++;
			}
		}
		return false;	
	}*/

	//get the load factor of the hashtable
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

	//resize table to specified size
	void rehash(int size) {
		printf("rehash: %i\n", size);
		size = nextPrime(size);
		//rehashes++;
		vector<list<BoardValue>> *temporaryTable = new vector<list<BoardValue>>(size);						
		vector<list<BoardValue>>::iterator endOfI = table->end();

		for (vector<list<BoardValue>>::iterator i = table->begin(); i != endOfI; ++i) {					
			list<BoardValue>::iterator endOfJ = (*i).end();

			for (list<BoardValue>::iterator j = (*i).begin(); j != endOfJ; ++j) {
				temporaryTable->at((*j).hash % size).push_back((*j));
			}
		}

		delete table;
		table = temporaryTable;		
		maxLoad = loadFactor * table->size();
		//recalculateDistribution();
	}

	class Iterator {
		friend class HashTable;
	public:
		HashTable *table;
		int currentList;
		list<BoardValue>::iterator i;

		//copy constructor
		Iterator(const Iterator &rhs) {		
			table = rhs.table;
			i = rhs.i;
			currentList = rhs.currentList;
		}

		//destructor
		~Iterator() {			
		}

		//assignment operator
		Iterator & operator=(const Iterator &rhs) {
			table = rhs.table;
			i = rhs.i;
			currentList = rhs.currentList;			
			return *this;
		}

		//postfix increment
		Iterator & operator++() {
			//if iterator is already at the end;
			if (currentList == table->table->size()) {
				return *this;
			}
			//if iterator is before the list
			if (currentList < 0) {
				currentList = 0;
				while (currentList < table->table->size()) {					
					if (!table->table->at(currentList).empty()) {
						i = table->table->at(currentList).begin();
						return *this;
					}					
					currentList++;
				};	
			}

			//if current list is not exhausted
			i++;
			if (i != table->table->at(currentList).end()) {				
				return *this;
			//search for next none empty list
			} else {
				currentList++;					
				while (currentList < table->table->size()) {
					if (!table->table->at(currentList).empty()) {
						i = table->table->at(currentList).begin();
						return *this;
					}
					currentList++;					
				}
			}
			return *this;
		}

		//postfix decrement
		/*Iterator & operator--() {
			//if iterator is already at the begining
			if (currentList < 0) {
				return *this;
			}
			//if we are at the end of the table
			if (currentList == table->size()) {
				while (currentList > 0) {
					currentList--;
					if (!table->table->at(currentList).empty()) {
						i = table->table->at(currentList).end();
						i--;
						return *this;
					}
				}
			}
			//if current list is not exhausted
			if (i != table->table->at(currentList).begin()) {
				i--;
				return *this;
			} 
			//if current list is first
			if (currentList == 0) {
				return *this;
			//search for previous none empty list 
			} else {
				while (currentList > 0) {
					currentList--;
					if (!table->table->at(currentList).empty()) {
						i = table->table->at(currentList).end();
						i--;				
						return *this;
					}
				}
			}
			return *this;
		}*/
	
		//get contents of item iterator is pointing to
		//if the iterator is at the end
		//an exception will occur
		BoardValue & operator*() {						
			return *i;
		}

		//equality operator
		bool operator==(Iterator &rhs) {				
			if (rhs.currentList != currentList) {
				return false;
			}
			if ((currentList == table->table->size())||(currentList == -1)) {
				return true;
			}
			if (rhs.i != i) {
				return false;
			}
			return true;
		}

		//none equality operator
		bool operator!=(Iterator &rhs) {
			return !(*this == rhs);
		}

	private:
		//constructor
		//details must be set by hashtable manually
		Iterator() {}
	};

	friend class HashTable::Iterator;	

	//get iterator positioned at the beginning
	Iterator begin() {
		Iterator i = Iterator();
		i.currentList = -1;
		i.table = this;
		++i;
		return i;
	}

	//get end iterator
	Iterator end() {
		Iterator i = Iterator();
		i.currentList = table->size();
		i.table = this;
		return i;
	}
		
	//return the distribution vector
	/*const vector<int> & getDistribution() {
		return distribution;
	}*/

	//equality operator
	bool operator ==(HashTable &rhs) {		
		if (currentSize != rhs.currentSize) {
			return false;
		}

		if (currentSize == 0) {
			return true;
		}
		
		Iterator r = rhs.begin();
		//if the tables of the same size the iterators can be increment
		//the same amount of times, therefor only one end iterator is needed
		Iterator end = this->end();
		
		int i = 0;
		for (Iterator l = begin(); l != end; ++l, ++r, ++i) {			
			if (*l != *r) {
				return false;
			}
		}

		return true;		
	}

	//inequality operator
	bool operator !=(HashTable &rhs) {
		return !(*this == rhs);
	}

	//remove all keys
	void clear() {
		
		vector<list<BoardValue>>::iterator end = table->end();
		
		for (vector<list<BoardValue>>::iterator i = table->begin(); i != end; ++i) {		
			(*i).clear();
		}

		currentSize = 0;
	}

	//get number of rehashes
	/*int getRehashes() {
		return rehashes;
	}*/

	//get number of hash collisions
	int getCollisions() {
		return collisions;
	}

	//set the maximum load factor
	void setLoadFactor(float load) {
		loadFactor = load;
		maxLoad = load * table->size();
	}

	//calculate and return standard deviation of hashtable distribution
	/*double getDeviation() {
		double mean = 0;
		double deviation = 0;
		for (int i = 0; i < distribution.size(); i++) {
			mean += distribution[i];
		}
		mean /= distribution.size();

		for (int i = 0; i < distribution.size(); i++) {
			deviation += sqrt(pow(distribution[i]-mean,2));
		}
		deviation /= distribution.size();

		return deviation;
	}*/

	//get capacity of hash table
	int getCapacity() {
		return table->capacity();
	}

private:
	//recalculate the distribution list after rehash.
	/*void recalculateDistribution() {
		distribution.clear();
		distribution.resize(table->size(), 0);

		for (int i = 0; i < table->size(); i++) {		
			distribution[i] = table->at(i).size();			
		}
	}*/
		
	vector<list<BoardValue>> *table; // The array of Lists, the // STL list is used
	int currentSize; // Number og items in // the hash table
	//int rehashes; //Number of times the list has been rehashed since creation
	int collisions; //Number of times an already exsisting key has been tried to be added.
	double loadFactor; //Allowable fill rate. 
	double maxLoad; //Pre calculated number of items that are allowed in list before rehash.
	//drastically decreases number of divisions/multiplications needed during runtime.
	//vector<int> distribution; //list reflecting distribution.
};

#endif