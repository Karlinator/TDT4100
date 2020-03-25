
package test;

import sokoban.Board;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class BoardTest {
	int[] up = new int[]{0, -1};
	final int[] down = new int[]{0, 1};
	final int[] left = new int[]{-1, 0};
	int[] right = new int[]{1, 0};
	@Test
	void illegalMovesNotAccepted() {
		Board tester = new Board("WWWWWWWWFFFFFWWFCFFFWWWPCCFWWFFFFFWWFFFFFWWWWWWWW", 7, 7, 0);
		assertFalse(tester.checkMove(tester.getTile(3, 1), tester.getTile(3, 0)), "Moving into walls is illegal");
		assertTrue(tester.checkMove(tester.getTile(4, 2), tester.getTile(5, 2)), "Moving into blank floor is legal");
		assertTrue(tester.checkMove(tester.getTile(2, 2), tester.getTile(1, 2)), "Pushing a crate is legal");
		assertFalse(tester.checkMove(tester.getTile(3, 3), tester.getTile(3, 4)), "Pushing more than one crate is illegal");
	}

	@Test
	void moveCrateTest() {
		Board tester = new Board("WWWWWWWWFFFFFWWFCFFFWWWPCCFWWFFFFFWWFFFFFWWWWWWWW", 7, 7, 0);
		tester.movePlayer(left);
		assertTrue(tester.getTile(1, 2).hasCrate(), "The moved crate shall be at (1, 2)");
		assertFalse(tester.getTile(2, 2).hasCrate(), "There should no longer be a crate at (2, 2)");
		assertArrayEquals(new int[]{2, 2}, tester.getPlayer().getLocation(), "The player should be at (2, 2)");

		tester = new Board("WWWWWWWWFFFFFWWFCFFFWWWPCFFWWFFFFFWWFFFFFWWWWWWWW", 7, 7, 0);
		tester.movePlayer(down);
		assertTrue(tester.getTile(3, 4).hasCrate(), "The moved crate shall be at (1, 2)");
		assertFalse(tester.getTile(3, 3).hasCrate(), "There should no longer be a crate at (2, 2)");
		assertArrayEquals(new int[]{3, 3}, tester.getPlayer().getLocation(), "The player should be at (2, 2)");
	}

	@Test
	void hasWonTest() {
		Board tester = new Board("SFPCG", 1, 5, 0);
		assertFalse(tester.hasWon(), "This board is not won yet");
		tester.movePlayer(down);
		assertTrue(tester.hasWon(), "The board with crate pushed to goal is won");
	}

}

