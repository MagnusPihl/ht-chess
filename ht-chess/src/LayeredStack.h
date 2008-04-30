#ifndef LAYERED_STACK_H
#define LAYERED_STACK_H

#include <vector>

template<typename CONTENT_TYPE, int STACK_COUNT> class LayeredStack {
private:	
	
	std::vector<CONTENT_TYPE> stack[STACK_COUNT];
	std::vector<int*> stackPointer;			
	
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

	void add(int layerIndex, CONTENT_TYPE &content);
	
	void setReturnPoint();
	
	void rollBack();
	
	void clear();
	
	friend class LayeredStack::iterator;

	iterator begin();
	
	iterator end();
};

#endif