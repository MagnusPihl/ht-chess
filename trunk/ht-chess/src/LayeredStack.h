#ifndef LAYERED_STACK_H
#define LAYERED_STACK_H

#include "GameConfiguration.h"
#include <vector>

#if USE_FLAT_STACK == 1 && USE_MINIMAX_ONLY == 0
	#if USE_EN_PASSANT == 1
		#define STACK_SIZE 6	
		#define STACK_EN_PASSANT_CAPTURES 5
	#else
		#define STACK_SIZE 5
	#endif
		#define STACK_LAST_TURN 0
		#define STACK_CAPTURES 1
		#define STACK_PAWN_RROMOTIONS 2
		#define STACK_CASTLING 3
		#define STACK_NORMAL_MOVES 4
#else
	#define STACK_SIZE 1
	#define STACK_EN_PASSANT_CAPTURES 0
	#define STACK_LAST_TURN 0
	#define STACK_CAPTURES 0
	#define STACK_PAWN_RROMOTIONS 0
	#define STACK_CASTLING 0
	#define STACK_NORMAL_MOVES 0
#endif

template<typename CONTENT_TYPE, int STACK_COUNT> class LayeredStack {
private:	
	
	std::vector<CONTENT_TYPE> stack[STACK_COUNT];
	std::vector<int> stackPointer;			
	std::vector<int> valueStack[STACK_COUNT];	
	
public:

	//forward moving iterator
	class iterator {
		
		friend class LayeredStack;
		
		private:
			LayeredStack *parent;
			int layerIndex;
			int stackIndex;
						
			iterator(LayeredStack *_parent, int _layerIndex, int _stackIndex);
			
		public:
		
			iterator();	
		
			iterator(iterator &itr);	
			
			CONTENT_TYPE & operator*();
			
			/**
			* Prefix increment. Do not run after you hit end()
			*/
			void operator++();
			
			iterator & operator=(iterator &rhs);
			
			bool operator== (iterator &rhs);
			
			bool operator!= (iterator &rhs);
						
			void erase() {
				parent->stack[layerIndex].erase(parent->stack[layerIndex].begin() + stackIndex);
				stackIndex--;
			}	
	};			
	
	LayeredStack();
	
	LayeredStack(LayeredStack &rhs);
	
	~LayeredStack();
	
	LayeredStack & operator=(LayeredStack &rhs);		
	
	void setReturnPoint();
	
	void rollBack();
	
	void clear();
	
	friend class LayeredStack::iterator;

	iterator begin();
	
	iterator end();	
		
	bool empty() {
		int index = stackPointer.size() - STACK_COUNT;
		
		for (int i = 0; i < STACK_COUNT; i++) {
			if (stack[i].size() != stackPointer[index + i]) {
				return false;
			}
		}		
		
		return true;
	}

	int size() {
		int index = stackPointer.size() - STACK_COUNT;
		int size = 0;
		
		for (int i = 0; i < STACK_COUNT; i++) {
			size += (stack[i].size() - stackPointer[index + i]);
		}		
		
		return size;
	}
		
	void add(int layerIndex, CONTENT_TYPE &content) {		
		stack[layerIndex].push_back(content);
	}	
	
	void erase(iterator &itr);
	
	void sort();
	
	void setValue(iterator &itr, int value);
};

#endif