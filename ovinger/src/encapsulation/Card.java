package encapsulation;

public class Card {

	private char suit;
	private int face;
	
	
	public Card(char suit, int face) {
		try {
			if ("SHDC".indexOf(suit) == -1) {
				throw new IllegalArgumentException("Suit not recognised!");
			}
			if (!(0 < face && face < 14)) {
				throw new IllegalArgumentException("Face must be between 1 and 13!");
			}
			this.suit = suit;
			this.face = face;
		} finally {
			
		}
	}
	
	public int getFace() {
		return face;
	}
	
	public char getSuit() {
		return suit;
	}
	
	public String toString() {
		return suit + Integer.toString(face);
	}

}
