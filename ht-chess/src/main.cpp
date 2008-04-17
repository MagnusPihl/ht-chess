#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif

#include "SDL.h"
//#include "SDL_ttf.h"
#include "MouseHandler.h"
#include "Board.h"
#include "BoardRenderer.h"
#include "MoveGenerator.h"
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

	screen = SDL_SetVideoMode(WIDTH, HEIGHT, 0, SDL_HWSURFACE | SDL_DOUBLEBUF); // | SDL_FULLSCREEN);
	board = new Board();
	renderer = new BoardRenderer();
	//SDL_Surface *cursor = SDL_LoadBMP("images\\cursor.bmp");
	//SDL_SetColorKey(cursor, SDL_SRCCOLORKEY, cursor->pixels[0]);

	int playerColor = WHITE;
	int selectedPiece = -1;

	MouseHandler mouse;
	SDL_Event event;
	MouseEvent mouseEvent;
	int mx, my;
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
		while(mouse.PollEvent(&mouseEvent))
		{
			switch(mouseEvent.type)
			{
			case SDL_MOUSE_BUTTONDOWN:
				if(mouseEvent.button == SDL_MOUSE_LEFT)
				{
					if(mouseEvent.x >= 20 && mouseEvent.x < 580 && mouseEvent.y >= 20 && mouseEvent.y < 580)
					{
						Position pos = GET_POSITION((mouseEvent.x-20)/70, ROW_COUNT-1-((mouseEvent.y-20)/70));
						if(selectedPiece == -1 && GET_PIECE_COLOR(board->getItemAt(pos)) == playerColor)
						{
							selectedPiece = pos;
							printf("You chose a piece to move.\n");
						}
						else if(selectedPiece != -1 && board->getItemAt(pos) == NO_PIECE)
						{
							selectedPiece = -1;
							printf("You chose a position to move to.\n");
						}
					}
				}
				if(mouseEvent.button == SDL_MOUSE_RIGHT)
				{
					if(selectedPiece != -1)
					{
						selectedPiece = -1;
						printf("You cancelled moving the selected piece.\n");
					}
				}
				break;
			}
		}
			
		SDL_Flip(screen);	//Update screen
	}

	delete board;
	delete renderer;
}