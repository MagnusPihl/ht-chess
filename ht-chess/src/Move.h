#ifndef MOVE_H
#define MOVE_H

public class Move
{
	private int to;
	private int from;
	private Piece special;
	private Piece type;
	private Piece content;

	public Move(int from, int to, Piece special, Piece type, Piece content) :
		this->from(from), this->to(to), this->special(special), this->type(type), this->content(content)
		{

		}

		//
		public void execute(Board board)
		{

		}

		public void unexecute(Board board)
		{

		}

		//accessors
		public int getOldPosition()
		{
			return from;
		}

		public int getNewPosition()
		{
			return to;
		}

		public Piece getSpecial()
		{
			return special;
		}

		public Piece getPieceType()
		{
			return type;
		}

		public Piece getContent()
		{
			return content;
		}
};

#endif