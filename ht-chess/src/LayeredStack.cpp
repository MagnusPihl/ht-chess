#ifndef LAYERED_STACK_CPP
#define LAYERED_STACK_CPP

#include "LayeredStack.h"

//constructors	
template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT>::LayeredStack() {		
	stackPointer.resize(STACK_COUNT, 0);	
}	

template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT>::LayeredStack(LayeredStack &rhs) {		
	
	for (int i = 0; i < STACK_COUNT; i++) {
		stack[i] = rhs.stack[i];
	}
	
	stackPointer = rhs.stackPointer;
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT> & LayeredStack<CONTENT_TYPE, STACK_COUNT>::operator=(LayeredStack &rhs) {		
	
	for (int i = 0; i < STACK_COUNT; i++) {
		stack[i] = rhs.stack[i];
	}
	
	stackPointer = rhs.stackPointer;	
}


/**
* Destructor
*/
template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT>::~LayeredStack() {			
	
	/*std::vector<int*>::iterator itr;	
	
	for (itr = stackPointer.begin(); itr != stackPointer.end(); ++itr) {
		delete [] (*itr);
	}*/
}



//
/*template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::add(int layerIndex, CONTENT_TYPE &content) {
	//index check??
	stack[layerIndex].push_back(content);
}*/
	
template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::setReturnPoint() {		
	//insert end points
	for (int i = 0; i < STACK_COUNT; ++i) {
		stackPointer.push_back(stack[i].size());
	}	
}
	
template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::rollBack() {	
	int index = stackPointer.size() - STACK_COUNT;	
	
	//erase from each layer
	for (int i = 0; i < STACK_COUNT; ++i) {
		stack[i].erase(stack[i].begin() + stackPointer[index + i], stack[i].end());
	}
	
	//remove rollBack pointer information
	stackPointer.erase(stackPointer.begin() + index, stackPointer.end());
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::clear() {
	for (int i = 0; i < STACK_COUNT; ++i) {
		stack[i].erase(stack[i].begin(), stack[i].end());
	}
	
	stackPointer.erase(stackPointer.begin() + STACK_COUNT, stackPointer.end());
}
	
template <typename CONTENT_TYPE, int STACK_COUNT> 
typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator LayeredStack<CONTENT_TYPE, STACK_COUNT>::begin() {
	typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator itr = iterator(this, 0, stackPointer[stackPointer.size() - STACK_COUNT] - 1);
	++itr;
	return itr;	
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator LayeredStack<CONTENT_TYPE, STACK_COUNT>::end() {
	return iterator(this, STACK_COUNT, 0);
}

/*template <typename CONTENT_TYPE, int STACK_COUNT> 
bool LayeredStack<CONTENT_TYPE, STACK_COUNT>::empty() {
	int *pointer = stackPointer.back();
	
	for (int i = 0; i < STACK_COUNT; i++) {
		if (stack[i].size() != pointer[i]) {
			return false;
		}
	}		
	
	return true;
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
int LayeredStack<CONTENT_TYPE, STACK_COUNT>::size() {
	int *pointer = stackPointer.back();
	int size = 0;
	
	for (int i = 0; i < STACK_COUNT; i++) {
		size += (stack[i].size() - pointer[i]);
	}		
	
	return size;
}*/


//iterator
//forward moving iterator
template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator::iterator() :
	parent(NULL), layerIndex(0), stackIndex(0) {	
}			

template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator::iterator(LayeredStack *_parent, int _layerIndex, int _stackIndex) :
	parent(_parent), layerIndex(_layerIndex), stackIndex(_stackIndex) {
}
	
template <typename CONTENT_TYPE, int STACK_COUNT> 
CONTENT_TYPE & LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator::operator*() {			
	//index check?
	return parent->stack[layerIndex][stackIndex];
}			
		
/**
* Prefix increment. Do not run after you hit end()
*/
template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator::operator++() {
	if (layerIndex < STACK_COUNT) { 
		stackIndex++;
		while (stackIndex == parent->stack[layerIndex].size()) {
			layerIndex++;
			if (layerIndex < STACK_COUNT) {
				stackIndex = parent->stackPointer[parent->stackPointer.size() - STACK_COUNT + layerIndex];
			} else {				
				stackIndex = 0;
				return;
			}
		}
	}
}		
		
template <typename CONTENT_TYPE, int STACK_COUNT> 
typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator & LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator::operator=(typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator &rhs) {
	if (this != &rhs) {
		parent = rhs.parent;
		layerIndex = rhs.layerIndex;
		stackIndex = rhs.stackIndex;
	}
	return *this;
}
		
template <typename CONTENT_TYPE, int STACK_COUNT> 
bool LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator::operator== (typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator &rhs) {
	if ((parent == rhs.parent)
		&& (layerIndex == rhs.layerIndex)
		&& (stackIndex == rhs.stackIndex)) {
		return true;
	}
	return false;
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
bool LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator::operator!= (typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator &rhs) {
	return !(*this == rhs);
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator::erase() {	
	parent->stack[layerIndex].erase(parent->stack[layerIndex].begin() + stackIndex);
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::erase(typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator &itr) {
	stack[itr.layerIndex].erase(parent->stack[itr.layerIndex].begin() + itr.stackIndex);
}				

#endif