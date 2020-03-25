package test;

import sokoban.Tile;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;

class TileTest {
	@Test
	void isFinishedTest() {
		Tile tester = new Tile(Tile.State.Goal, true);
		assertTrue(tester.isFinished(), "A goal Tile with a crate must be finished.");
		tester = new Tile(Tile.State.Floor, true);
		assertTrue(tester.isFinished(), "A floor tile with crate is finished.");
		tester = new Tile(Tile.State.Floor, false);
		assertTrue(tester.isFinished(), "A floor tile without crate is finished.");
	}
}