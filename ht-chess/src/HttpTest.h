#ifndef HTTPTEST_H
#define HTTPTEST_H

#include "SDL_net.h"
#include "HttpResponse.h"

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

	int getIncoming()
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
		printf(msg);

		int len, result;
		HttpResponse resp("Hello!");
		

		printf("\nSending message:\n");
		printf(resp());

		len = strlen(resp()) + 1; // add one for the terminating NULL
		result = SDLNet_TCP_Send(clientSocket, resp(), resp.getLength());
		if( result < resp.getLength() )
			printf("SDLNet_TCP_Send: %s\n", SDLNet_GetError());
		printf("\n\nMessage sent!\n");
		return 0;
	}
};

#endif