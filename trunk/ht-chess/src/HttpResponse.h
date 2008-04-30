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
		response.append("Date: Wed, 30 Apr 2008 08:57:45 GMT\r\n");
		response.append("Server: Apache/2.2.3 (Unix) mod_ssl/2.2.3 OpenSSL/0.9.7e PHP/5.2.0\r\n");
		response.append("Last-Modified: Wed, 30 Apr 2008 08:57:21 GMT\r\n");
		response.append("ETag: \"60006-6-56313e40\"\r\n");
		response.append("Content-Length: ");
			intHolder.clear();
			intHolder << (message.length());
			response.append(intHolder.str());
			response.append("\r\n");
		response.append("Accept-Ranges: bytes\r\n");
		response.append("Connection: close\r\n");
		response.append("Content-Type: text/html\r\n");
		response.append("\r\n");
		response.append(message);
	}
public:
	HttpResponse(): message("")
	{
		generateResponse();
	}

	HttpResponse(char* msg) : message(msg)
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