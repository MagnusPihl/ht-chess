/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.htpp.chess;

import java.util.*;

/**
 *
 * @author LMK
 */
public class MoveGenerator {

    public static void generateMoves(Board board, int color, Vector moves) {			
	int x, y;		
	int position;
	
	for (x = 0; x < Position.ROW_COUNT; ++x) {
            for (y = 0; y < Position.COLUMN_COUNT; ++y) {
                position = Position.getPosition(x, y);
                if (Piece.getPieceColor(board.getItemAt(position)) == color) {
                    board.getMovesFromPosition(position, moves);
                }
            }
        }
    }
}
