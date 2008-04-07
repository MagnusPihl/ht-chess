#ifndef BOARD_RENDERER_H
#define BOARD_RENDERER_H

#include "Piece.h"
#include "Position.h"
#include "Board.h"
#include "SDL.h"

#define PIECE_COLOR_POS 22
#define POSITION_COLOR_POS 24
#define PIECE_NAME_POS 23

class BoardRenderer 
{	
	private:

		SDL_Rect pieceRect;
		SDL_Rect destinationRect;
		SDL_Surface* white;
		SDL_Surface* blackOnWhite[NONE];
		SDL_Surface* blackOnBlack[NONE];
		SDL_Surface* whiteOnBlack[NONE];	
		SDL_Surface* whiteOnWhite[NONE];

		void loadResources()
		{
			pieceRect.w = 70;
			pieceRect.h = 70;
			pieceRect.x = 0;
			pieceRect.y = 0;
			destinationRect.w = 70;
			destinationRect.h = 70;		

			int i;

			white = SDL_LoadBMP("..\\ht-chess\\images\\white.bmp");

			char path[] = "..\\ht-chess\\images\\b w.bmp";
			//			   012345678901234567890123456789
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
		BoardRenderer()
		{
			loadResources();
		}		

		void drawBoard(SDL_Surface* screen, Board* board) 
		{
			int x, y, pos, posColor, piece, pieceColor, type;			
			SDL_Surface* picture;

			for (x = 0; x < ROW_COUNT; ++x)
			{
				for (y = 0; y < COLUMN_COUNT; ++y)
				{
					destinationRect.x = x + 20;
					destinationRect.y = y + 20;
					pos = GET_POSITION(x,y);
					piece = board->content[pos];					
					pieceColor = GET_PIECE_COLOR(piece);
					posColor = GET_POSITION_COLOR(piece);
					type = GET_PIECE_TYPE(piece);
					
					if (pieceColor == BLACK) 
					{
						if (posColor == BLACK) {
							picture = blackOnBlack[type];
						} else {
							picture = blackOnWhite[type];
						}	
					}
					else
					{
						if (posColor == BLACK) {
							picture = whiteOnBlack[type];
						} else {
							picture = whiteOnWhite[type];
						}	
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