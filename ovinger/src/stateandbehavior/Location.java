package stateandbehavior;

public class Location {
	private int x;
	private int y;

	public Location(int x, int y) {
		this.x = x;
		this.y = y;
	}

	public static void main(String[] args) {
		Location l = new Location(0, 0);
		l.up();
		l.up();
		System.out.println(l.getY());
		l.left();
		System.out.println(l.getX());

	}
	
	public void right() {
		x += 1;
	}
	public void left() {
		x -= 1;
	}
	public void down() {
		y += 1;
	}
	public void up() {
		y -= 1;
	}
	
	public int getX() {
		return x;
	}
	
	public int getY() {
		return y;
	}

}
