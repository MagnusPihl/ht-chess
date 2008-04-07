#ifndef BOARD_RENDERER_H
#define BOARD_RENDERER_H

#include "Piece.h"
#include "Position.h"
#include "Board.h"
#include "SDL.h"
#include <stdio.h>

#define PIECE_COLOR_POS 40
#define PIECE_NAME_POS 41
#define POSITION_COLOR_POS 42
#define PIECE_SIZE 70

class BoardRenderer 
{	
	private:

		SDL_Rect pieceRect;
		SDL_Rect destinationRect;
		SDL_Surface* white;
		SDL_Surface* black;
		SDL_Surface* blackOnWhite[NONE];
		SDL_Surface* blackOnBlack[NONE];
		SDL_Surface* whiteOnBlack[NONE];	
		SDL_Surface* whiteOnWhite[NONE];

		void loadResources()
		{			
			int i;

			white = SDL_LoadBMP("C:\\docs\\AI\\projects\\skak\\Release\\images\\white.bmp");
			black = SDL_LoadBMP("C:\\docs\\AI\\projects\\skak\\Release\\images\\black.bmp");

			char path[] = "C:\\docs\\AI\\projects\\skak\\Release\\images\\b w.bmp";
			//			   012 34567 890 123456789 01234 56789012 3456789 0123456
			//			   0           1           2          3           4 

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
		BoardRenderer() : pieceRect(SDL_Rect()), destinationRect(SDL_Rect())
		{
			pieceRect.w = PIECE_SIZE;
			pieceRect.h = PIECE_SIZE;
			pieceRect.x = 0;
			pieceRect.y = 0;
			destinationRect.w = PIECE_SIZE;
			destinationRect.h = PIECE_SIZE;		

			loadResources();
		}		

		void drawBoard(SDL_Surface* screen, Board* board) 
		{
			int x, y, pos, posColor, piece, pieceColor, type;			
			SDL_Surface* picture;
			//
			int *ptr = (int*)screen->pixels;
			ptr[54+screen->pitch*10] = 0x00FFFF;

			for (x = 0; x < ROW_COUNT; ++x)
			{
				for (y = 0; y < COLUMN_COUNT; ++y)
				{
					destinationRect.x = x*PIECE_SIZE + 20;
					destinationRect.y = y*PIECE_SIZE + 20;

					pos = GET_POSITION(x,y);
					piece = board->content[pos];					
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
						picture = (posColor == BLACK) ? white : black;
					}
						
					SDL_BlitSurface(
								picture, 
								&pieceRect, 
								screen, 
								&destinationRect);
				}
			}			
		}
};

#endif