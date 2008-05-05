#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif

#include "SDL_thread.h"
#include "Core.h"
#include "HttpTest.h"
#include "LayeredStack.h"
#include "LayeredStack.cpp"

#define WIDTH 800
#define HEIGHT 600

#define PITCH (screen->pitch / 4)

int threadfunc(void *unused)
{
    HttpTest http;
	http.getIncoming();
	return 0;
}

int main(int argc, char *argv[])
{
		
	LayeredStack<Move, 3> stack;
	stack.clear();

    stack.add(0, Move(A1, A1, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
	stack.add(1, Move(A2, A2, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
	stack.add(2, Move(A3, A3, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
    stack.setReturnPoint();
    stack.add(0, Move(B1, A1, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
	stack.add(1, Move(B2, A2, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
	stack.add(2, Move(B3, A3, NO_PIECE, KNIGHT_BLACK, PAWN_WHITE, 0, INVALID_POSITION, 0));
    
    
    LayeredStack<Move, 3>::iterator i;
	
	for (i = stack.begin(); i != stack.end(); ++i) {
		printf("%i\n", (*i).getOldPosition());
	}
	
	stack.rollBack();
	
	for (i = stack.begin(); i != stack.end(); ++i) {
		printf("%i\n", (*i).getOldPosition());
	}
	
	
	
	/* initialize SDL */
	if ( SDL_Init( SDL_INIT_VIDEO ) < 0 )
	{
		fprintf( stderr, "Video initialization failed: %s\n", SDL_GetError( ) );
		SDL_Quit( );
	}
	if(TTF_Init()==-1)
	{
	    printf("TTF_Init: %s\n", TTF_GetError());
	    exit(2);
	}
	atexit(SDL_Quit);

	
	SDL_Thread *thread;
	thread = SDL_CreateThread(threadfunc, NULL);
	Core core;
	core.run();
	SDL_WaitThread(thread, NULL);
	return 0;
}