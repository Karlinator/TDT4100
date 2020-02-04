package encapsulation;

import java.util.ArrayList;

public class CardDeck {
	
	private ArrayList<Card> deck = new ArrayList<Card>();
	
	public CardDeck(int n) {
		char[] Suits = {'S', 'H', 'D', 'C'};
		for (char suit : Suits) {
			for (int i = 1; i < n+1; i++) {
				deck.add(new Card(suit, i));
			}
		}
	}
	
	public int getCardCount() {
		return deck.size();
	}
	
	public Card getCard(int n) {
		if (n > getCardCount()) {
			throw new IllegalArgumentException("There aren't that many cards!");
		}
		return deck.get(n);
	}
	
	public void shufflePerfectly() {
		ArrayList<Card> top = new ArrayList<Card>(deck.subList(0, (getCardCount()/2)));
		ArrayList<Card> bottom = new ArrayList<Card>(deck.subList(getCardCount()/2, getCardCount()));
		ArrayList<Card> newDeck = new ArrayList<Card>();
		
		for (int i = 0; i < getCardCount()/2; i++) {
			newDeck.add(top.get(i));
			newDeck.add(bottom.get(i));
		}
		deck = newDeck;
		
	}
	
	public static void main(String[] args) {
		CardDeck d = new CardDeck(8);
		System.out.println(d.getCardCount());
		d.shufflePerfectly();
		System.out.println(d.getCardCount());
		System.out.println(d.getCard(0));
		System.out.println(d.getCard(1));

	}

}
