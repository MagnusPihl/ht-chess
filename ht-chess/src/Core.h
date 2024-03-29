#ifndef CORE_H
#define CORE_H

#include "SDL.h"
#include "SDL_ttf.h"
#include "MouseHandler.h"
#include "Board.h"
#include "BoardRenderer.h"
#include "MoveGenerator.h"
#include "MoveSelector.h"
#include "LayeredStack.h"
#include <math.h>
#include "PerformanceTester.h"

#if USE_MINIMAX_ONLY == 1
	#define AI_TYPE MiniMax
#else
	#define AI_TYPE AlphaBetaOptimized
#endif

#if TEST_PERFORMANCE == 1
	#include <fstream>
#endif

#define WIDTH 800
#define HEIGHT 600

#define PITCH (screen->pitch / 4)

Board board;

class Core
{
private:
	SDL_Surface* screen;
	
	SDL_Color colorWhite;
	SDL_Color colorBlack;
	SDL_Rect whiteTextRect;
	SDL_Rect blackTextRect;
	SDL_Rect player1TextRect;
	SDL_Rect player2TextRect;
	SDL_Rect restartTextRect;
	SDL_Rect quitTextRect;
	SDL_Rect cursorRect;
	SDL_Rect overlayRect;

	TTF_Font *font;
	SDL_Surface *whiteText;
	SDL_Surface *blackText;
	SDL_Surface *humanText;
	SDL_Surface *aiText;
	SDL_Surface *restartText;
	SDL_Surface *quitText;
	SDL_Surface *cursor;
	SDL_Surface *overlay;
	SDL_Surface *fullOverlay;
	
	AI_TYPE moveSelector;
	LayeredStack<Move, STACK_SIZE> moveList;
	BoardRenderer renderer;
	Position cappedPos;
    Move curMove;

public:
	Core()
	{
		screen = SDL_SetVideoMode(WIDTH, HEIGHT, 0, SDL_HWSURFACE | SDL_DOUBLEBUF); // | SDL_FULLSCREEN);
		colorWhite.r = 255; colorWhite.g = 255; colorWhite.b = 255;
		colorBlack.r = 0; colorBlack.g = 0; colorBlack.b = 0;
		font = TTF_OpenFont("verdana.ttf", 20);		
		whiteText = TTF_RenderText_Shaded(font, "White", colorWhite, colorBlack);
		whiteTextRect.x = 620; whiteTextRect.y = 20;
		blackText = TTF_RenderText_Shaded(font, "Black", colorWhite, colorBlack);
		blackTextRect.x = 620; blackTextRect.y = 50;
		humanText = TTF_RenderText_Shaded(font, "Human", colorWhite, colorBlack);
		aiText = TTF_RenderText_Shaded(font, "AI", colorWhite, colorBlack);
		player1TextRect.x = 700; player1TextRect.y = 20;
		player2TextRect.x = 700; player2TextRect.y = 50;
		restartText = TTF_RenderText_Shaded(font, "Restart", colorWhite, colorBlack);
		restartTextRect.x = 620; restartTextRect.y = 500;
		quitText = TTF_RenderText_Shaded(font, "Quit", colorWhite, colorBlack);
		quitTextRect.x = 620; quitTextRect.y = 530;

		cursor = SDL_LoadBMP("images\\cursor.bmp");
		SDL_SetColorKey(cursor, SDL_SRCCOLORKEY, SDL_MapRGB(cursor->format, 255, 0, 255));
		cursorRect.w = 70; cursorRect.h = 70;
		overlay = SDL_LoadBMP("images\\overlay.bmp");
		SDL_SetColorKey(overlay, SDL_SRCCOLORKEY, SDL_MapRGB(overlay->format, 255, 0, 255));
		overlayRect.w = 70; overlayRect.h = 70;
		fullOverlay = SDL_CreateRGBSurface(SDL_HWSURFACE, 600, 600, 32, 0, 0, 0, 100);
		//SDL_SetAlpha(fullOverlay, SDL_SRCALPHA, 128);
		SDL_SetColorKey(fullOverlay, SDL_SRCCOLORKEY, SDL_MapRGB(fullOverlay->format, 255, 0, 255));
                cappedPos = INVALID_POSITION;              
	}

	~Core()
	{
		TTF_Quit();
		SDL_FreeSurface(whiteText);
		SDL_FreeSurface(blackText);
		SDL_FreeSurface(humanText);
		SDL_FreeSurface(aiText);
		SDL_FreeSurface(restartText);
		SDL_FreeSurface(quitText);
		SDL_FreeSurface(cursor);
		SDL_FreeSurface(overlay);
		SDL_FreeSurface(fullOverlay);
		SDL_FreeSurface(screen);
	}

	void run()
	{
		#if TEST_PERFORMANCE == 1
			int performanceTimer = SDL_GetTicks();
		#endif
		
		Color gameTurn = WHITE;
		bool turnDone = false;
		int selectedPiece = -1;
		bool player1IsHuman = true;
		bool player2IsHuman = true;

		MouseHandler mouse;
		SDL_Event event;
		MouseEvent mouseEvent;
		int boardState;
		
		while(true)
		{
			if(turnDone)
			{
				gameTurn = GET_OPPOSITE_COLOR(gameTurn);
				turnDone = false;
			}			
			
			if ((gameTurn != NO_COLOR) && ((boardState = board.isCheckmate()) != IS_SAFE))
			{
				if ((boardState & IS_CHECKMATE) != 0) {
					if (GET_PIECE_COLOR(boardState) == WHITE) {
						printf("White is checkmate!\n");
					} else {
						printf("Black is checkmate!\n");
					}					
					gameTurn = NO_COLOR;
					
				} else if ((boardState & IS_STALEMATE) != 0) {
					printf("Stalemate!\n");
					gameTurn = NO_COLOR;
					
				} else if ((boardState & IS_CHECK) != 0) {	
					if (GET_PIECE_COLOR(boardState) == WHITE) {
						printf("White is check!\n");
					} else {
						printf("Black is check!\n");
					}			
				}
			}
			
			if(gameTurn == WHITE && !player1IsHuman)
			{
				curMove = moveSelector(board, true);
				if(curMove.getContent() != NO_PIECE) {					
					cappedPos = curMove.getNewPosition();
				}
				else {
					cappedPos = INVALID_POSITION;
				}
				curMove.execute(board);
				
				#if PRINT_MOVE_DESCRIPTIONS == 1
					cout << curMove;
				#endif
				
				turnDone = true;
			}
			else if(gameTurn == BLACK && !player2IsHuman)
			{
                curMove = moveSelector(board, false);
                if(curMove.getContent() != NO_PIECE) {
                    cappedPos = curMove.getNewPosition();
                }
                else {
                    cappedPos = INVALID_POSITION;
                }
				curMove.execute(board);
				
				#if PRINT_MOVE_DESCRIPTIONS == 1
					cout << curMove;
				#endif
				
				turnDone = true;
			}

			SDL_FillRect(screen, NULL, SDL_MapRGB(screen->format, 0, 0, 0));
			renderer.drawBoard(screen, board);
			while(SDL_PollEvent(&event))	//Process event queue until empty
			{			
				switch(event.type)
				{
				case SDL_KEYDOWN:
					if(event.key.keysym.sym == SDLK_ESCAPE)
					{
						return;
					}
					break;
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
							{
								board.resetBoard();
								gameTurn = WHITE;
							}
							else if(mouseEvent.y > 530 && mouseEvent.y < 560)
								return;
						}
						else if(mouseEvent.x >= 20 && mouseEvent.x < 580 && mouseEvent.y >= 20 && mouseEvent.y < 580)
						{
							Position pos = GET_POSITION((mouseEvent.x-20)/70, ROW_COUNT-1-((mouseEvent.y-20)/70));
							if((selectedPiece == -1) && (GET_PIECE_COLOR(board.getItemAt(pos)) == gameTurn)
								&& ((gameTurn==WHITE && player1IsHuman) || (gameTurn==BLACK && player2IsHuman)))
							{
								moveList.clear();
								MoveGenerator::generateLegalMoves(board, gameTurn, pos, moveList);								
								/*if(!moveList.empty())		//If this is enabled, players can't choose pieces with no valid moves.
								{*/
									SDL_FillRect(fullOverlay, NULL, SDL_MapRGB(screen->format, 255, 0, 255));
									LayeredStack<Move, STACK_SIZE>::iterator itr;
									
									for(itr = moveList.begin(); itr != moveList.end(); ++itr)
									{
										overlayRect.x = GET_REAL_COLUMN((*itr).getNewPosition()) * 70 + 20;
										overlayRect.y = (ROW_COUNT-1-GET_ROW((*itr).getNewPosition())) * 70 + 20;
										SDL_BlitSurface(overlay, NULL, fullOverlay, &overlayRect);
									}
								
									selectedPiece = pos;
									cursorRect.x = GET_REAL_COLUMN(pos) * 70 + 20;
									cursorRect.y = (ROW_COUNT-1-GET_ROW(pos)) * 70 + 20;
								//}																
							}
							else if(selectedPiece != -1)
							{
								//Check if valid move!
								LayeredStack<Move, STACK_SIZE>::iterator itr;								
								
								for(itr = moveList.begin(); itr != moveList.end(); ++itr)
								{
									if((*itr).getNewPosition() == pos)
									{
										selectedPiece = -1;
										turnDone = true;
										(*itr).execute(board);
										
										#if PRINT_MOVE_DESCRIPTIONS == 1
											cout << (*itr);
										#endif
										
                                        if((*itr).getContent() != NO_PIECE)
                                        {
                                            cappedPos = (*itr).getNewPosition();
                                        }
                                        else
                                        {
                                            cappedPos = INVALID_POSITION;
                                        }
										//printf("The material value of white: %i, and black: %i\n", board.getMaterialValue(WHITE), board.getMaterialValue(BLACK));
										break;
									}
								}
								SDL_Flip(screen);	//Update screen
							}
						}
					}
					if(mouseEvent.button == SDL_MOUSE_RIGHT)
					{
						if(selectedPiece != -1)
						{
							selectedPiece = -1;
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
			{
				SDL_BlitSurface(humanText, NULL, screen, &player1TextRect);
			}
			else
			{
				SDL_BlitSurface(aiText, NULL, screen, &player1TextRect);
			}
			
			if(player2IsHuman)
			{
				SDL_BlitSurface(humanText, NULL, screen, &player2TextRect);
			}
			else
			{
				SDL_BlitSurface(aiText, NULL, screen, &player2TextRect);
			}
			
			SDL_BlitSurface(restartText, NULL, screen, &restartTextRect);
			SDL_BlitSurface(quitText, NULL, screen, &quitTextRect);
			SDL_Flip(screen);	//Update screen
			
			#if TEST_PERFORMANCE == 1
				if(turnDone)
				{					
					/*test().out << "timeUsed = [timeUsed " << SDL_GetTicks() - performanceTimer << "];"  << std::endl;
					test().out << "turnNumber = [turnNumber " << test().turn << "];"  << std::endl;*/
					test().turn++;
					test().out << "\n%Turn: " << test().turn << std::endl;					
				}
			#endif
		}
	}
};

#endif