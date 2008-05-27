#ifndef HTTPRESPONSE_H
#define HTTPRESPONSE_H

#include <string>
#include <sstream>

using namespace std;

class HttpResponse
{
private:
	string response;
	string message;
	stringstream intHolder;

	void generateResponse()
	{
		response = "HTTP/1.1 200 OK\r\n";
		response.append("Content-Length: ");
			intHolder.clear();
			intHolder << (message.length());
			response.append(intHolder.str());
			response.append("\r\n");
		response.append("Content-Type: text/html\r\n");
		response.append("\r\n");
		response.append(message);
	}
public:
	HttpResponse(): message("")
	{
		generateResponse();
	}

	HttpResponse(const char* msg) : message(msg)
	{
		generateResponse();
	}

	const char* operator()()
	{
		return response.c_str();
	}

	int getLength()
	{
		return response.length()+1;
	}
};

#endif HTTPRESPONSE_H