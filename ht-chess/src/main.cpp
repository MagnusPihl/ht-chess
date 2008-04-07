#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif

#include "SDL.h"
#include "Board.h"
#include "BoardRenderer.h"
#include <math.h>

#define WIDTH 800
#define HEIGHT 600

SDL_Surface* screen;
Board* board;
BoardRenderer* renderer;
SDL_Rect srcrect = {0,0,600,600};

#define PITCH (screen->pitch / 4)

void render()
{   
  // Lock surface if needed
  if (SDL_MUSTLOCK(screen))
    if (SDL_LockSurface(screen) < 0) 
      return;

  // Ask SDL for the time in milliseconds
  int tick = SDL_GetTicks();
	
  renderer->drawBoard(screen, board);

  //SDL_BlitSurface(board, &srcrect, screen, &srcrect);
	//SDL_BlitSurface(board, NULL, screen, NULL);

  // Unlock if needed
  if (SDL_MUSTLOCK(screen)) 
    SDL_UnlockSurface(screen);

  // Tell SDL to update the whole screen
  //SDL_UpdateRect(screen, 0, 0, WIDTH, HEIGHT);  	
}

int main(int argc, char *argv[])
{
	/* initialize SDL */
	if ( SDL_Init( SDL_INIT_VIDEO ) < 0 )
	{
		fprintf( stderr, "Video initialization failed: %s\n", SDL_GetError( ) );
		SDL_Quit( );
	}
	atexit(SDL_Quit);

	screen = SDL_SetVideoMode(WIDTH, HEIGHT, 0, SDL_HWSURFACE | SDL_DOUBLEBUF);
	//board = SDL_LoadBMP("..\\ht-chess\\images\\board.bmp");
	board = new Board();
	renderer = new BoardRenderer();

	SDL_Event event;
	while(true)
	{
		render();
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

	delete board;
	delete renderer;
}