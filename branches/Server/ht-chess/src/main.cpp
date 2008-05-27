#ifndef MAIN_CPP
#define MAIN_CPP

#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif

#include "ChessServer.h"
#include "SDL_thread.h"
#include "LayeredStack.h"
#include "LayeredStack.cpp"

int main(int argc, char *argv[])
{			
	/* initialize SDL */
	if ( SDL_Init( SDL_INIT_VIDEO ) < 0 )
	{
		fprintf( stderr, "Video initialization failed: %s\n", SDL_GetError( ) );
		SDL_Quit( );
	}
	atexit(SDL_Quit);

	ChessServer http;
	http.run();
		
	return 0;
}

#endif