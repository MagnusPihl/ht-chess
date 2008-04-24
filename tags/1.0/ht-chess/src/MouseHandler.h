#ifndef MOUSEHANDLER_H
#define MOUSEHANDLER_H

#include <queue>

enum MouseState
{
	SDL_MOUSE_BUTTONDOWN,
	SDL_MOUSE_BUTTONUP,
	SDL_MOUSE_LEFT,
	SDL_MOUSE_RIGHT
};

struct MouseEvent
{
	MouseState type;
	MouseState button;
	int x;
	int y;
};

class MouseHandler
{
private:
	bool pressedLeft, pressedRight;
	int x, y;
	std::queue<MouseEvent> eventQueue;
	MouseEvent e;

public:
	MouseHandler()
	{
		pressedLeft = false;
		pressedRight = false;
		x = 0;
		y = 0;
	}

	int PollEvent(MouseEvent * mouseEvent)
	{
		SDL_PumpEvents();
		if((SDL_GetMouseState(&x, &y)&SDL_BUTTON(1) && true) != pressedLeft)
		{
			pressedLeft = !pressedLeft;
			if(pressedLeft)	e.type = SDL_MOUSE_BUTTONDOWN;
			else			e.type = SDL_MOUSE_BUTTONUP;
			e.button = SDL_MOUSE_LEFT;
			e.x = x;
			e.y = y;
			eventQueue.push(e);
		}
		if((SDL_GetMouseState(&x, &y)&SDL_BUTTON(3) && true) != pressedRight)
		{
			pressedRight = !pressedRight;
			if(pressedRight)e.type = SDL_MOUSE_BUTTONDOWN;
			else			e.type = SDL_MOUSE_BUTTONUP;
			e.button = SDL_MOUSE_RIGHT;
			e.x = x;
			e.y = y;
			eventQueue.push(e);
		}
		if(!eventQueue.empty())
		{
			e = eventQueue.front();
			mouseEvent->type = e.type;
			mouseEvent->button = e.button;
			mouseEvent->x = e.x;
			mouseEvent->y = e.y;
			eventQueue.pop();

			return eventQueue.size()+1;
		}

		return 0;
	}
};

#endif MOUSEHANDLER_H