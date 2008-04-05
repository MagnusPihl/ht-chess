#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif
#include "SDL.h"

int main(int argc, char *argv[])
{
	/* initialize SDL */
	if ( SDL_Init( SDL_INIT_VIDEO ) < 0 )
	{
		fprintf( stderr, "Video initialization failed: %s\n", SDL_GetError( ) );
		SDL_Quit( );
	}
	atexit(SDL_Quit);

	SDL_Surface *screen;
	screen = SDL_SetVideoMode(800, 600, 0, SDL_HWSURFACE | SDL_DOUBLEBUF);

	SDL_Event event;
	while(true)
	{
		while(SDL_PollEvent(&event))	//Process event queue until empty
		{
			switch(event.type)
			{
			case SDL_KEYDOWN:
				if(event.key.keysym.sym == SDLK_ESCAPE)
				{
					return 0;
				}
			}
		}
		SDL_Flip(screen);	//Update screen
	}
}