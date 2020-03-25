package sokoban;

import java.io.Serializable;
import java.util.Arrays;

public class Player implements Serializable {
	final int[] location = new int[2];
	public Player(int[] location) {
		this.location[0] = location[0];
		this.location[1] = location[1];
	}

	public int[] getLocation() {
		return location;
	}

	public void move(int[] direction) {
		Arrays.setAll(location, i -> location[i] + direction[i]);
	}
}
