#ifndef HTTPTEST_H
#define HTTPTEST_H

#include "SDL_net.h"

class HttpTest
{
public:
	HttpTest()
	{
		if(SDL_Init(0)==-1)
		{
			printf("SDL_Init: %s\n", SDL_GetError());
			exit(1);
		}
		if(SDLNet_Init()==-1)
		{
			printf("SDLNet_Init: %s\n", SDLNet_GetError());
			exit(2);
		}
	}

	~HttpTest()
	{
		SDLNet_Quit();
	}

	void getIncoming()
	{
		IPaddress ip;
		TCPsocket tcpsock;
		if(SDLNet_ResolveHost(&ip,NULL,9999)==-1)
		{
		   printf("SDLNet_ResolveHost: %s\n", SDLNet_GetError());
		   exit(1);
		}
		tcpsock=SDLNet_TCP_Open(&ip);
		if(!tcpsock)
		{
		   printf("SDLNet_TCP_Open: %s\n", SDLNet_GetError());
		   exit(2);
		}

		printf("Succesfully created a socket!\n");

		TCPsocket clientSocket;

		while(!clientSocket)
			clientSocket=SDLNet_TCP_Accept(tcpsock);

		printf("Accepted a socket.\n");

		char msg[4096];
		SDLNet_TCP_Recv(clientSocket, msg, 4095);
		printf(msg, "\n");

		int len, result;
		char* msg2=  "HTTP/1.1 200 OK\nConnection: close\nContent-Length: 7\nContent-Type: text/html\n\nHello!";

		len = strlen(msg2) + 1; // add one for the terminating NULL
		result = SDLNet_TCP_Send(clientSocket, msg2, len);
		if( result < len )
			printf("SDLNet_TCP_Send: %s\n", SDLNet_GetError());
	}
};

#endif