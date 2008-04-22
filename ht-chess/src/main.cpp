#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif

#include "Core.h"

#define WIDTH 800
#define HEIGHT 600

#define PITCH (screen->pitch / 4)

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

	Core core;
	core.run();
	return 0;
}