#ifndef MAIN_CPP
#define MAIN_CPP

#ifdef WIN32
#pragma comment(lib, "SDL.lib")
#pragma comment(lib, "SDLmain.lib")
#endif

#include "ChessServer.h"

int main(int argc, char *argv[])
{

	ChessServer http;
	http.run();
		
	return 0;
}

#endif