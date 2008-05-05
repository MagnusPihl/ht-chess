#ifndef LAYERED_STACK_H
#define LAYERED_STACK_H

#define STACK_SIZE 2
#define STACK_CAPTURES 0
#define STACK_NORMAL_MOVES 0

#include <vector>

template<typename CONTENT_TYPE, int STACK_COUNT> class LayeredStack {
private:	
	
	std::vector<CONTENT_TYPE> stack[STACK_COUNT];
	std::vector<int> stackPointer;			
	
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
		
			CONTENT_TYPE & operator*();
			
			/**
			* Prefix increment. Do not run after you hit end()
			*/
			void operator++();
			
			iterator & operator=(iterator &rhs);
			
			bool operator== (iterator &rhs);
			
			bool operator!= (iterator &rhs);
	};			
	
	LayeredStack();
	
	LayeredStack(LayeredStack &rhs);
	
	~LayeredStack();
	
	LayeredStack & operator=(LayeredStack &rhs);		

	//void add(int layerIndex, CONTENT_TYPE &content);
	
	void setReturnPoint();
	
	void rollBack();
	
	void clear();
	
	friend class LayeredStack::iterator;

	iterator begin();
	
	iterator end();
	
	/*bool empty();
	
	int size();*/
		
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

};

#endif