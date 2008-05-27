#ifndef CHESSSERVER_H
#define CHESSSERVER_H

#define SERVER_PORT 9999

#include <string>
#include "SDL_net.h"
#include "HttpResponse.h"
#include "MoveSelector.h"

std::vector<TCPsocket> chessServer_clients;
AlphaBetaOptimized chessServer_moveSelector;

void Tokenize(const std::string& str, std::vector<int>& tokens, const std::string& delimiters = ",")
{
	std::string::size_type lastPos = str.find_first_not_of(delimiters, 0);
    std::string::size_type pos     = str.find_first_of(delimiters, lastPos);

    while (std::string::npos != pos || std::string::npos != lastPos)
    {
		istringstream buffer(str.substr(lastPos, pos - lastPos));
		int tempInt;
		buffer >> tempInt;
        tokens.push_back(tempInt);
        lastPos = str.find_first_not_of(delimiters, pos);
        pos = str.find_first_of(delimiters, lastPos);
    }
}

int clientThread(void *thread)
{
	Board board;

	//TCPsocket socket = (TCPsocket)clientSocket;
	TCPsocket socket = chessServer_clients.back();
	printf("Accepted a socket.\n");

	char msg[4096];
	SDLNet_TCP_Recv(socket, msg, 4095);
	std::string fullMsg = msg;
	std::string settingsMsg;
	std::string boardMsg;
	std::string moveMsg;
	
	int i = fullMsg.find("Settings:") + 10;
	int j = fullMsg.find("\n", i);
	if(i != -1)
		settingsMsg = fullMsg.substr(i, j-i);
	
	i = fullMsg.find("Board:") + 7;
	j = fullMsg.find('\n', i);
	if(i != -1)
		boardMsg = fullMsg.substr(i, j-i);
	
	i = fullMsg.find("Move:") + 6;
	j = fullMsg.find('\n', i);
	if(i != -1)
		moveMsg = fullMsg.substr(i, j-i);
	printf("Received request.\n");
	//printf("Board:%s\n", boardMsg.c_str());
	//printf("Move:%s\n", moveMsg.c_str());
	
	std::vector<int> settingsVec;		//(max_depth),(max_search_time)
	Tokenize(settingsMsg, settingsVec);

	std::vector<int> boardVec;
	Tokenize(boardMsg, boardVec);
	if(boardVec.size() == 66)
	{
		board.setHasMoved(WHITE, boardVec[0]);
		board.setHasMoved(BLACK, boardVec[1]);
		int pos = 2;
		for(int i=0; i<8; i++)
		{
			for(int j=0; j<8; j++)
			{
				board[GET_POSITION(i,j)] = (ColoredPiece)boardVec[pos];
				pos++;
			}
		}
	}

	std::vector<int> moveVec;
	Tokenize(moveMsg, moveVec);
	if(moveVec.size() >= 7)
	{
		Move move((Position)moveVec[0], (Position)moveVec[1], (ColoredPiece)moveVec[2], (ColoredPiece)moveVec[3],
			(ColoredPiece)moveVec[4], moveVec[5], moveVec[6]);
		board.setHasMoved(WHITE, boardVec[0]);
		//Don't execute the move. The received board is up-to-date.
		//move.execute(board);

		printf("Calculating move with depth of %i in a maximum of %i milliseconds...\n", settingsVec[0], settingsVec[1]);
		Move result = chessServer_moveSelector(board, IS_WHITE(move.getPiece()), settingsVec[0], settingsVec[1]);
		printf("Done calculating move.\n");
	
		ostringstream buffer;
		buffer << result.getOldPosition() << "," << result.getNewPosition() << "," << result.getSpecial() << "," <<
			result.getPiece() << "," << result.getContent() << "," << result.getHasMoved() << "," << result.getReversableMoves();
		HttpResponse resp(buffer.str().c_str());

		int tcpResult = SDLNet_TCP_Send(socket, resp(), resp.getLength());
		if( tcpResult < resp.getLength() )
			printf("SDLNet_TCP_Send: %s\n", SDLNet_GetError());
		printf("Sent response.\n");
	}
	SDLNet_TCP_Close(socket);
	SDL_WaitThread((SDL_Thread*)thread, NULL);
	return 0;
}

class ChessServer
{
public:
	ChessServer()
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

	~ChessServer()
	{
		SDLNet_Quit();
	}

	void run()
	{
		IPaddress ip;
		if(SDLNet_ResolveHost(&ip, NULL, SERVER_PORT) == -1)
		{
		   printf("SDLNet_ResolveHost: %s\n", SDLNet_GetError());
		   exit(1);
		}

		TCPsocket tcpsock;
		tcpsock=SDLNet_TCP_Open(&ip);
		if(!tcpsock)
		{
		   printf("SDLNet_TCP_Open: %s\n", SDLNet_GetError());
		   exit(2);
		}
		printf("Succesfully created a socket!\n");
	
		int id = 0;
		while(true)
		{
			TCPsocket clientSocket = NULL;
			
			while(!clientSocket)
			{
				clientSocket=SDLNet_TCP_Accept(tcpsock);
			}
			if(clientSocket != NULL)
			{
				chessServer_clients.push_back(clientSocket);
				SDL_Thread *client = NULL;
				client = SDL_CreateThread(clientThread, client);
			}
		}
		SDLNet_TCP_Close(tcpsock);
	}
};

#endif