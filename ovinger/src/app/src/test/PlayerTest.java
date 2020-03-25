package test;

import sokoban.Player;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class PlayerTest {

	@Test
	void move() {
		Player tester = new Player(new int[]{5, 5});
		tester.move(new int[]{-1, 0});
		assertEquals(4, tester.getLocation()[0], "Moving left must move player left.");
		tester.move(new int[]{0, -1});
		assertEquals(4, tester.getLocation()[1], "Moving up must move player up.");
		tester.move(new int[]{1, 0});
		assertEquals(5, tester.getLocation()[0], "Moving right must move player right.");
		tester.move(new int[]{0, 1});
		assertEquals(5, tester.getLocation()[1], "Moving down must move player down.");

	}
}