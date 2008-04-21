#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif

#include "SDL.h"
#include "SDL_ttf.h"
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
	if(TTF_Init()==-1)
	{
	    printf("TTF_Init: %s\n", TTF_GetError());
	    exit(2);
	}
	atexit(SDL_Quit);

	screen = SDL_SetVideoMode(WIDTH, HEIGHT, 0, SDL_HWSURFACE | SDL_DOUBLEBUF); // | SDL_FULLSCREEN);
	board = new Board();
	renderer = new BoardRenderer();
	
	SDL_Color colorWhite = { 255, 255, 255 };
	SDL_Color colorBlack = { 0, 0, 0 };
	TTF_Font *font = TTF_OpenFont("verdana.ttf", 20);
	SDL_Surface *whiteText = TTF_RenderText_Shaded(font, "White", colorWhite, colorBlack);
	SDL_Rect whiteTextRect = { 620, 20, 0, 0 };
	SDL_Surface *blackText = TTF_RenderText_Shaded(font, "Black", colorWhite, colorBlack);
	SDL_Rect blackTextRect = { 620, 50, 0, 0 };
	SDL_Surface *humanText = TTF_RenderText_Shaded(font, "Human", colorWhite, colorBlack);
	SDL_Surface *aiText = TTF_RenderText_Shaded(font, "AI", colorWhite, colorBlack);
	SDL_Rect player1TextRect = { 700, 20, 0, 0 };
	SDL_Rect player2TextRect = { 700, 50, 0, 0 };
	SDL_Surface *restartText = TTF_RenderText_Shaded(font, "Restart", colorWhite, colorBlack);
	SDL_Rect restartTextRect = { 620, 500, 0, 0 };
	SDL_Surface *quitText = TTF_RenderText_Shaded(font, "Quit", colorWhite, colorBlack);
	SDL_Rect quitTextRect = { 620, 530, 0, 0 };
	
	SDL_Surface *cursor = SDL_LoadBMP("images\\cursor.bmp");
	SDL_SetColorKey(cursor, SDL_SRCCOLORKEY, SDL_MapRGB(cursor->format, 255, 0, 255));
	SDL_Rect cursorRect = { 0, 0, 70, 70 };
	SDL_Surface *overlay = SDL_LoadBMP("images\\overlay.bmp");
	SDL_SetColorKey(overlay, SDL_SRCCOLORKEY, SDL_MapRGB(overlay->format, 255, 0, 255));
	SDL_Rect overlayRect = { 0, 0, 70, 70 };
	SDL_Surface *fullOverlay = SDL_CreateRGBSurface(SDL_HWSURFACE, 600, 600, 32, 0, 0, 0, 100);
	//SDL_SetAlpha(fullOverlay, SDL_SRCALPHA, 128);
	SDL_SetColorKey(fullOverlay, SDL_SRCCOLORKEY, SDL_MapRGB(fullOverlay->format, 255, 0, 255));
	std::vector<Move> moveList;

	int gameTurn = WHITE;
	bool turnDone = false;
	int selectedPiece = -1;
	bool player1IsHuman = true;
	bool player2IsHuman = true;

	MouseHandler mouse;
	SDL_Event event;
	MouseEvent mouseEvent;
	int mx, my;
	while(true)
	{
		if(turnDone)
		{
			if(gameTurn == WHITE) gameTurn = BLACK;
			else gameTurn = WHITE;
			turnDone = false;
		}
		if(gameTurn == WHITE && !player1IsHuman)
		{
			printf("Running AI for WHITE.\n");	//Run AI
			turnDone = true;
		}
		else if(gameTurn == BLACK && !player2IsHuman)
		{
			printf("Running AI for BLACK.\n");
			turnDone = true;
		}

		SDL_FillRect(screen, NULL, SDL_MapRGB(screen->format, 0, 0, 0));
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
					if(mouseEvent.x >= 620)
					{
						if(mouseEvent.y > 20 && mouseEvent.y < 50)
							player1IsHuman = !player1IsHuman;
						else if(mouseEvent.y > 50 && mouseEvent.y < 80)
							player2IsHuman = !player2IsHuman;
						else if(mouseEvent.y > 500 && mouseEvent.y < 530)
							printf("Game resetting!");
						else if(mouseEvent.y > 530 && mouseEvent.y < 560)
							return 0;
					}
					else if(mouseEvent.x >= 20 && mouseEvent.x < 580 && mouseEvent.y >= 20 && mouseEvent.y < 580)
					{
						Position pos = GET_POSITION((mouseEvent.x-20)/70, ROW_COUNT-1-((mouseEvent.y-20)/70));
						printf("Position is: %i, %i\n", ROW_COUNT-1-((mouseEvent.y-20)/70), (mouseEvent.x-20)/70);
						printf("Pos is: %i, %i\n", ROW_COUNT-1-GET_ROW(pos), GET_REAL_COLUMN(pos));
						if((selectedPiece == -1) && (GET_PIECE_COLOR(board->getItemAt(pos)) == gameTurn)
							&& ((gameTurn==WHITE && player1IsHuman) || (gameTurn==BLACK && player2IsHuman)))
						{
							moveList.clear();
							board->getMovesFromPosition(pos, moveList);
							if(!moveList.empty())
							{
								SDL_FillRect(fullOverlay, NULL, SDL_MapRGB(screen->format, 255, 0, 255));
								std::vector<Move>::iterator itr;
								for(itr = moveList.begin(); itr != moveList.end(); itr++)
								{
									overlayRect.x = GET_REAL_COLUMN((*itr).getNewPosition()) * 70 + 20;
									overlayRect.y = (ROW_COUNT-1-GET_ROW((*itr).getNewPosition())) * 70 + 20;
									SDL_BlitSurface(overlay, NULL, fullOverlay, &overlayRect);
								}
							
								selectedPiece = pos;
								cursorRect.x = GET_REAL_COLUMN(pos) * 70 + 20;
								cursorRect.y = (ROW_COUNT-1-GET_ROW(pos)) * 70 + 20;
								printf("You chose a piece to move.\n");
							}
						}
						else if(selectedPiece != -1)
						{
							//Check if valid move!
							std::vector<Move>::iterator itr;
							for(itr = moveList.begin(); itr != moveList.end(); itr++)
							{
								if((*itr).getNewPosition() == pos)
								{
									selectedPiece = -1;
									turnDone = true;
									(*itr).execute(board);
									printf("You chose a position to move to.\n");
									break;
								}
							}
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
		if(selectedPiece != -1)
		{
			SDL_BlitSurface(cursor, NULL, screen, &cursorRect);
			SDL_BlitSurface(fullOverlay, NULL, screen, NULL);
		}
		SDL_BlitSurface(whiteText, NULL, screen, &whiteTextRect);
		SDL_BlitSurface(blackText, NULL, screen, &blackTextRect);
		if(player1IsHuman)
			SDL_BlitSurface(humanText, NULL, screen, &player1TextRect);
		else
			SDL_BlitSurface(aiText, NULL, screen, &player1TextRect);
		if(player2IsHuman)
			SDL_BlitSurface(humanText, NULL, screen, &player2TextRect);
		else
			SDL_BlitSurface(aiText, NULL, screen, &player2TextRect);
		SDL_BlitSurface(restartText, NULL, screen, &restartTextRect);
		SDL_BlitSurface(quitText, NULL, screen, &quitTextRect);
		SDL_Flip(screen);	//Update screen
	}

	delete board;
	delete renderer;
}