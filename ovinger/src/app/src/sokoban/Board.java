package sokoban;

import java.io.Serializable;
import java.util.Arrays;

public class Board implements Serializable {
	final Tile[][] boardTiles;
	Player player;
	private final String map;
	private int playerMoves;
	private final int width;
	private final int height;
	private static final long serialVersionUID = 1L;

	public Board(String boardString, int width, int height, int playerMoves) {
		map = boardString;
		this.width = width;
		this.height = height;
		boardTiles = new Tile[width][height];
		this.playerMoves = playerMoves;
		char[] boardStringArray = boardString.toCharArray();
		for (int i = 0; i < width; i++) {
			for (int j = 0; j < height; j++) {
				char s = boardStringArray[i * height + j];
				//Switch based on board input string format.
				switch (s) {
					case 'F':
						//Add tile with type FLOOR
						boardTiles[i][j] = new Tile(Tile.State.Floor, false);
						break;
					case 'W':
						//Add tile with type WALL
						boardTiles[i][j] = new Tile(Tile.State.Wall, false);
						break;
					case 'C':
						//Add tile with type FLOOR, and set hasCrate = True
						boardTiles[i][j] = new Tile(Tile.State.Floor, true);
						break;
					case 'G':
						//Add tile with type GOAL
						boardTiles[i][j] = new Tile(Tile.State.Goal, false);
						break;
					case 'S':  //For 'Stacked'
						//Add tile with GOAL and has a crate
						boardTiles[i][j] = new Tile(Tile.State.Goal, true);
						break;
					case 'P':
						//Add tile with type FLOOR, and set player.location to this tile
						boardTiles[i][j] = new Tile(Tile.State.Floor, false);
						player = new Player(new int[]{i, j});
						break;
					case 'M':
						//Add tile with type GOAL, and set player.location to this tile
						boardTiles[i][j] = new Tile(Tile.State.Goal, false);
						player = new Player(new int[]{i, j});
					case 'V':
						break;
					default:
						throw new IllegalArgumentException();
				}
			}
		}
	}

	public boolean checkMove(Tile targetTile, Tile behindTargetTile) {
		//Checks a move for validity. Moving unto floors is legal, pushing one box unto floor is legal.
		return ((targetTile.getState() == Tile.State.Floor || targetTile.getState() == Tile.State.Goal) && !targetTile.hasCrate()) || (targetTile.hasCrate() && (behindTargetTile.getState() == Tile.State.Floor || behindTargetTile.getState() == Tile.State.Goal) && !behindTargetTile.hasCrate());
	}

	public boolean movePlayer(int[] direction) {
		int[] currentLocation = player.getLocation();
		int[] moveTarget = new int[2];
		Arrays.setAll(moveTarget, i -> currentLocation[i] + direction[i]);
		Tile targetTile = boardTiles[moveTarget[0]][moveTarget[1]];
		int[] behindTarget = new int[2];
		Arrays.setAll(behindTarget, i -> currentLocation[i] + direction[i] * 2);
		if ((behindTarget[0] >= 0) && (behindTarget[1] >= 0) && (behindTarget[1] < boardTiles[0].length) && (behindTarget[0] < boardTiles.length)) {
			Tile behindTargetTile = boardTiles[behindTarget[0]][behindTarget[1]];
			if (checkMove(targetTile, behindTargetTile)) {
				if (!behindTargetTile.hasCrate()) {
					behindTargetTile.setCrate(targetTile.hasCrate());
				}
				targetTile.setCrate(false);
				player.move(direction);
				playerMoves++;
				return true;
			}
		}
		return false;
	}

	public Tile getTile(int x, int y) {
		return boardTiles[x][y];
	}

	public Player getPlayer() {
		return player;
	}

	public int getPlayerMoves() {return playerMoves;}

	public boolean hasWon() {
		for (Tile[] row : boardTiles) {
			for (Tile tile : row) {
				if (!tile.isFinished()) {
					return false;
				}
			}
		}
		return true;
	}

	public int getWidth() {
		return width;
	}

	public int getHeight() {
		return height;
	}

	public String getMap() {
		return map;
	}

	@Override
	public String toString() {
		StringBuilder tilesString = new StringBuilder();
		int i = 0;
		int j = 0;
		for (Tile[] row : boardTiles) {
			for (Tile tile : row) {
				if(Arrays.equals(player.getLocation(), new int []{i, j})) {
					switch (tile.toString()) {
						case "F": tilesString.append("P"); break;
						case "G": tilesString.append("M"); break;
					}
				} else {
					tilesString.append(tile.toString());
				}
				j++;
			}
			i++;
			j = 0;

		}
		return tilesString.toString();
	}
}
