package of6.underveis;

import java.util.Arrays;

import javafx.fxml.FXML;

public class GameController {

	Game game;
	
	@FXML
	public void initialize() {
		game = new Game(16, 12);
		game.getTile(6, 11).setGround();
		game.getTile(7, 11).setGround();
		game.getTile(8, 11).setGround();
		game.getTile(6, 10).setGround();
		game.getTile(7, 10).setGround();
		game.getTile(8, 10).setGround();
		game.getTile(9, 10).setGround();
		game.getTile(6, 9).setGround();
		game.getTile(7, 9).setGround();
		game.getTile(8, 9).setGround();
		game.getTile(9, 9).setGround();
		game.getTile(6, 8).setGround();
		game.getTile(8, 6).setGround();
		game.getTile(10, 6).setGround();
		game.getTile(5, 5).setGround();
		game.getTile(5, 6).setFruit();
		game.getTile(9, 6).setFruit();
		game.getTile(8, 3).setGoal();

		game.createSnake(Arrays.asList(game.getTile(9, 8), game.getTile(8, 8)));
		
		System.out.println(game);
	}
	
}
