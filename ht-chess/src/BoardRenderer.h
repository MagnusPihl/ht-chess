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
		SDL_Rect borderRect[BORDER_COUNT];
		SDL_Surface* white;
		SDL_Surface* black;
		SDL_Surface* border[BORDER_COUNT];
		SDL_Surface* blackOnWhite[PIECE_TYPE_COUNT];
		SDL_Surface* blackOnBlack[PIECE_TYPE_COUNT];
		SDL_Surface* whiteOnBlack[PIECE_TYPE_COUNT];	
		SDL_Surface* whiteOnWhite[PIECE_TYPE_COUNT];

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
				borderRect[i].h = border[i]->h;
				borderRect[i].w = border[i]->w;				
			}
			borderRect[BORDER_LEFT].x = 0;
			borderRect[BORDER_LEFT].y = 20;
			borderRect[BORDER_RIGHT].x = 580;
			borderRect[BORDER_RIGHT].y = 20;
			borderRect[BORDER_TOP].x = 0;
			borderRect[BORDER_TOP].y = 0;
			borderRect[BORDER_BOTTOM].x = 0;
			borderRect[BORDER_BOTTOM].y = 580;

			char path[] = "images\\b w.bmp";
			//			   0123456 7890123456789 01234 56789012 3456789 0123456
			//			   0          1           2          3           4 

			//			  "images\\b w.bmp";
			//			   0123456 78901234567890123456789
			//			   0         1         2

			for (i = 0; i < PIECE_TYPE_COUNT; ++i)
			{
				path[PIECE_NAME_POS] = PIECE_CHARACTERS[i];
				blackOnWhite[i]	= SDL_LoadBMP(path);
			}

			path[POSITION_COLOR_POS] = 'b';
			for (i = 0; i < PIECE_TYPE_COUNT; ++i)
			{
				path[PIECE_NAME_POS] = PIECE_CHARACTERS[i];
				blackOnBlack[i]	= SDL_LoadBMP(path);
			}

			path[PIECE_COLOR_POS] = 'w';
			for (i = 0; i < PIECE_TYPE_COUNT; ++i)
			{
				path[PIECE_NAME_POS] = PIECE_CHARACTERS[i];
				whiteOnBlack[i]	= SDL_LoadBMP(path);
			}

			path[POSITION_COLOR_POS] = 'w';
			for (i = 0; i < PIECE_TYPE_COUNT; ++i)
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
			SDL_FreeSurface(white);
			SDL_FreeSurface(black);
			for(int i=0; i < BORDER_COUNT; i++)
				SDL_FreeSurface(border[i]);
			for(int i=0; i < PIECE_TYPE_COUNT; i++)
			{			
				SDL_FreeSurface(blackOnWhite[i]);
				SDL_FreeSurface(blackOnBlack[i]);
				SDL_FreeSurface(whiteOnBlack[i]);
				SDL_FreeSurface(whiteOnWhite[i]);
			}
		}	

		void drawBoard(SDL_Surface* screen, Board &board) 
		{
			int x, y;			
			Piece type;
			Position pos;			
			Color posColor, pieceColor;
			ColoredPiece piece;
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
								&borderRect[i]);	
			}

			for (x = 0; x < ROW_COUNT; ++x)
			{
				for (y = 0; y < COLUMN_COUNT; ++y)
				{
					destinationRect.x = x*PIECE_SIZE + 20;
					destinationRect.y = (ROW_COUNT - 1 - y)*PIECE_SIZE + 20;

					pos = GET_POSITION(x,y);
					piece = board[pos];					
					pieceColor = GET_PIECE_COLOR(piece);
					posColor = GET_POSITION_COLOR(pos);
					type = GET_PIECE_TYPE(piece);
					
					if (type != NO_PIECE) 
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