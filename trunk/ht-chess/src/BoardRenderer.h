#ifndef BOARD_RENDERER_H
#define BOARD_RENDERER_H

#include "Piece.h"
#include "Position.h"
#include "Board.h"
#include "SDL.h"
#include <stdio.h>

#define PIECE_COLOR_POS 7
#define PIECE_NAME_POS 8
#define POSITION_COLOR_POS 9
#define PIECE_SIZE 70
#define BORDER_LEFT 0
#define BORDER_RIGHT 1
#define BORDER_TOP 2
#define BORDER_BOTTOM 3
#define BORDER_COUNT 4

class BoardRenderer 
{	
	private:

		//SDL_Rect pieceRect;
		SDL_Rect destinationRect;
		SDL_Rect* borderRect[4];
		SDL_Surface* white;
		SDL_Surface* black;
		SDL_Surface* border[4];
		SDL_Surface* blackOnWhite[NONE];
		SDL_Surface* blackOnBlack[NONE];
		SDL_Surface* whiteOnBlack[NONE];	
		SDL_Surface* whiteOnWhite[NONE];

		void loadResources()
		{			
			int i;

			white = SDL_LoadBMP("images\\white.bmp");
			black = SDL_LoadBMP("images\\black.bmp");
			border[BORDER_LEFT] = SDL_LoadBMP("images\\borderLeft.bmp");
			border[BORDER_RIGHT] = SDL_LoadBMP("images\\borderRight.bmp");
			border[BORDER_TOP] = SDL_LoadBMP("images\\borderTop.bmp");
			border[BORDER_BOTTOM] = SDL_LoadBMP("images\\borderBottom.bmp");
			
			for (i = 0; i < BORDER_COUNT; ++i) 
			{
				borderRect[i] = new SDL_Rect();
				borderRect[i]->h = border[i]->h;
				borderRect[i]->w = border[i]->w;				
			}
			borderRect[BORDER_LEFT]->x = 0;
			borderRect[BORDER_LEFT]->y = 20;
			borderRect[BORDER_RIGHT]->x = 580;
			borderRect[BORDER_RIGHT]->y = 20;
			borderRect[BORDER_TOP]->x = 0;
			borderRect[BORDER_TOP]->y = 0;
			borderRect[BORDER_BOTTOM]->x = 0;
			borderRect[BORDER_BOTTOM]->y = 580;

			char path[] = "images\\b w.bmp";
			//			   0123456 7890123456789 01234 56789012 3456789 0123456
			//			   0          1           2          3           4 

			//			  "images\\b w.bmp";
			//			   0123456 78901234567890123456789
			//			   0         1         2

			for (i = 0; i < NONE; ++i)
			{
				path[PIECE_NAME_POS] = PIECE_CHARACTERS[i];
				blackOnWhite[i]	= SDL_LoadBMP(path);
			}

			path[POSITION_COLOR_POS] = 'b';
			for (i = 0; i < NONE; ++i)
			{
				path[PIECE_NAME_POS] = PIECE_CHARACTERS[i];
				blackOnBlack[i]	= SDL_LoadBMP(path);
			}

			path[PIECE_COLOR_POS] = 'w';
			for (i = 0; i < NONE; ++i)
			{
				path[PIECE_NAME_POS] = PIECE_CHARACTERS[i];
				whiteOnBlack[i]	= SDL_LoadBMP(path);
			}

			path[POSITION_COLOR_POS] = 'w';
			for (i = 0; i < NONE; ++i)
			{
				path[PIECE_NAME_POS] = PIECE_CHARACTERS[i];
				whiteOnWhite[i]	= SDL_LoadBMP(path);
			}
		}

	public:
		BoardRenderer() : destinationRect(SDL_Rect()) //pieceRect(SDL_Rect()),
		{
			//borderRect = new SDL_Rect[BORDER_COUNT];
			/*pieceRect.w = PIECE_SIZE;
			pieceRect.h = PIECE_SIZE;
			pieceRect.x = 0;
			pieceRect.y = 0;*/
			destinationRect.w = PIECE_SIZE;
			destinationRect.h = PIECE_SIZE;		

			loadResources();
		}	

		~BoardRenderer() {			
			/*for (int i = 0; i < BORDER_COUNT; ++i) 
			{
				delete borderRect[i];			
			}*/
			delete [] borderRect;
		}	

		void drawBoard(SDL_Surface* screen, Board &board) 
		{
			int x, y, pos, posColor, piece, pieceColor, type;			
			SDL_Surface* picture;
			//
			int *ptr = (int*)screen->pixels;
			ptr[54+screen->pitch*10] = 0x00FFFF;

			for (int i = 0; i < BORDER_COUNT; ++i)
			{
				SDL_BlitSurface(
								border[i], 
								NULL, 
								screen, 
								borderRect[i]);	
			}

			for (x = 0; x < ROW_COUNT; ++x)
			{
				for (y = 0; y < COLUMN_COUNT; ++y)
				{
					destinationRect.x = x*PIECE_SIZE + 20;
					destinationRect.y = (ROW_COUNT - 1 - y)*PIECE_SIZE + 20;

					pos = GET_POSITION(x,y);
					piece = board.content[pos];					
					pieceColor = GET_PIECE_COLOR(piece);
					posColor = GET_POSITION_COLOR(pos);
					type = GET_PIECE_TYPE(piece);
					
					if (type != NONE) 
					{
						if (pieceColor == BLACK) 
						{
							picture = (posColor == BLACK) ? blackOnBlack[type] : blackOnWhite[type];							
						}
						else
						{
							picture = (posColor == BLACK) ? whiteOnBlack[type] : whiteOnWhite[type];
						}
					} 
					else 
					{
						picture = (posColor == BLACK) ? black : white;
					}
						
					SDL_BlitSurface(
								picture, 
								NULL, //&pieceRect, 
								screen, 
								&destinationRect);
				}
			}			
		}
};

#endif