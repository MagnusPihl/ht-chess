#ifndef LAYERED_STACK_CPP
#define LAYERED_STACK_CPP

#include "LayeredStack.h"

//constructors	
template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT>::LayeredStack() {
	int *pointer = new int[STACK_COUNT];
	
	for (int i = 0; i < STACK_COUNT; i++) {
		pointer[i] = 0;
	}
	
	stackPointer.push_back(pointer);
}	

template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT>::LayeredStack(LayeredStack &rhs) {		
	
	for (int i = 0; i < STACK_COUNT; i++) {
		stack[i] = rhs.stack[i];
	}
	
	std::vector<int*>::iterator itr;	
	
	for (itr = rhs.stackPointer.begin(); itr != rhs.stackPointer.end(); ++itr) {
		int *pointer = new int[STACK_COUNT];
	
		for (int i = 0; i < STACK_COUNT; i++) {
			pointer[i] = (*itr)[i];
		}
		
		stackPointer.push_back(pointer);
	}
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT> & LayeredStack<CONTENT_TYPE, STACK_COUNT>::operator=(LayeredStack &rhs) {		
	
	for (int i = 0; i < STACK_COUNT; i++) {
		stack[i] = rhs.stack[i];
	}
	
	std::vector<int*>::iterator itr;	
	
	for (itr = rhs.stackPointer.begin(); itr != rhs.stackPointer.end(); ++itr) {
		int *pointer = new int[STACK_COUNT];
	
		for (int i = 0; i < STACK_COUNT; i++) {
			pointer[i] = (*itr)[i];
		}
		
		stackPointer.push_back(pointer);
	}
}


/**
* Destructor
*/
template <typename CONTENT_TYPE, int STACK_COUNT> 
LayeredStack<CONTENT_TYPE, STACK_COUNT>::~LayeredStack() {			
	
	std::vector<int*>::iterator itr;	
	
	for (itr = stackPointer.begin(); itr != stackPointer.end(); ++itr) {
		delete [] (*itr);
	}
}



//
template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::add(int layerIndex, CONTENT_TYPE &content) {
	//index check??
	stack[layerIndex].push_back(content);
}
	
template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::setReturnPoint() {
	//create new layer end pointer bundle
	int *pointer = new int[STACK_COUNT];
	
	//insert end points
	for (int i = 0; i < STACK_COUNT; ++i) {
		pointer[i] = stack[i].size();
	}
	
	//store
	stackPointer.push_back(pointer);
}
	
template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::rollBack() {
	//retrieve points
	int *pointer = stackPointer.back();
	stackPointer.pop_back();
	
	//erase from each layer
	for (int i = 0; i < STACK_COUNT; ++i) {
		stack[i].erase(stack[i].begin() + pointer[i], stack[i].end());
	}
	
	delete [] pointer;
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
void LayeredStack<CONTENT_TYPE, STACK_COUNT>::clear() {
	for (int i = 0; i < STACK_COUNT; ++i) {
		stack[i].erase(stack[i].begin(), stack[i].end());
	}
	
	stackPointer.erase(stackPointer.begin(), stackPointer.end());
}
	
template <typename CONTENT_TYPE, int STACK_COUNT> 
typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator LayeredStack<CONTENT_TYPE, STACK_COUNT>::begin() {
	return iterator(this, 0, stackPointer.back()[0]);
}

template <typename CONTENT_TYPE, int STACK_COUNT> 
typename LayeredStack<CONTENT_TYPE, STACK_COUNT>::iterator LayeredStack<CONTENT_TYPE, STACK_COUNT>::end() {
	return iterator(this, STACK_COUNT, 0);
}



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
	stackIndex++;
	if (stackIndex == parent->stack[layerIndex].size()) {
		layerIndex++;
		if (layerIndex < STACK_COUNT) { 
			stackIndex = parent->stackPointer.back()[layerIndex];
		} else {
			stackIndex = 0;
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

#endif