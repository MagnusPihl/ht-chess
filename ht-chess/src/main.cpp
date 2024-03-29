#ifndef MAIN_CPP
#define MAIN_CPP

#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif

#include "Core.h"
//#include "ChessServer.h"
#include "PerformanceTester.h"
#include "SDL_thread.h"
#include "LayeredStack.h"
#include "LayeredStack.cpp"
#include <fstream>

#define WIDTH 800
#define HEIGHT 600

#define PITCH (screen->pitch / 4)

//int threadfunc(void *unused)
//{
//    ChessServer http;
//	http.run();
//	return 0;
//}

int main(int argc, char *argv[])
{			
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

	
	//SDL_Thread *thread;
	//thread = SDL_CreateThread(threadfunc, NULL);
	Core core;
	core.run();
	//SDL_WaitThread(thread, NULL);
		
	return 0;
}

#endif