package sokoban;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

import java.io.*;
import java.util.*;
import java.util.stream.Collectors;

public class Controller implements Serializable {
    @FXML AnchorPane pane;

    private static final String map1 =
                    "WWWWWWWWWW" +
                    "WFFFFFFFFW" +
                    "WFFFFFFFFW" +
                    "WFFFFFFFFW" +
                    "WFFFFFFFFW" +
                    "WFFFFFFFFW" +
                    "WFPFFFFFFW" +
                    "WFCFFFFFFW" +
                    "WFGFFFFFFW" +
                    "WWWWWWWWWW";
    private static final String map2 =
                    "WWWWWWWWWW" +
                    "WPFFFFFFFW" +
                    "WFCFGGFCFW" +
                    "WFFFFFFFFW" +
                    "WFFFFFFFFW" +
                    "WFFFFFFFFW" +
                    "WFFFFFFFFW" +
                    "WFCFGGFCFW" +
                    "WFFFFFFFFW" +
                    "WWWWWWWWWW";
    private static final String map3 =
                    "WWWWWWWWWWWW" +
                    "WWWFFPFFFFWW" +
                    "WWWFCSWSCWWW" +
                    "WFFCFFSFFCFW" +
                    "WFFCFWGWFCFW" +
                    "WWWFCGFGCFFW" +
                    "WWWFFFFFFFFW" +
                    "WWWWWWWWWWWW";
    Board board;
    int[] dir;
    Media media;
    MediaPlayer mediaPlayer;

    @FXML
    public void initialize() {
        //Label
        Label label = new Label("Ready to play?");
        label.setLayoutX(213);
        label.setLayoutY(132);
        label.setFont(Font.font("Agency FB Bold", 37));
        pane.getChildren().add(label);

        //Buttons
        Button btn1 = new Button("Map 1");
        Button btn2 = new Button("Map 2");
        Button btn3 = new Button("Map 3");
        Button save = new Button("Save");
        Button load = new Button("Load");
        btn1.setLayoutX(187);
        btn2.setLayoutX(279);
        btn3.setLayoutX(371);
        save.setLayoutX(5);
        load.setLayoutX(5);
        int i = 1;
        for(Button b : Arrays.asList(btn1, btn2, btn3)) {
            b.setLayoutY(190);
            b.setScaleX(1.2);
            b.setScaleY(1.2);
            b.setId("btn" + i);
            b.setOnAction(this::play);
            pane.getChildren().add(b);
            i++;
        }
        save.setId("save");
        load.setId("load");
        save.setOnAction(this::play);
        load.setOnAction(this::play);
        save.setLayoutY(5);
        save.setScaleX(1.2);
        save.setScaleY(1.2);
        load.setLayoutY(40);
        load.setScaleX(1.2);
        load.setScaleY(1.2);
        pane.getChildren().add(save);
        pane.getChildren().add(load);
    }

    //Launched by start button. Creates board, runs drawMap() and KeyListener. Game logic, hasWon().
    public void play(ActionEvent event) {
        Button button = (Button) event.getSource();
        switch (button.getId()) {
            case "btn1": board = new Board(map1, 10, 10, 0); playMusic(1); break;
            case "btn2": board = new Board(map2, 10, 10, 0); playMusic(2); break;
            case "btn3": board = new Board(map3, 8, 12, 0); playMusic(3); break;
            case "save": {
                TextInputDialog dialog = new TextInputDialog(("save"));
                dialog.setTitle("Save Name");
                dialog.setContentText("Please enter a save name:");
                Optional<String> result = dialog.showAndWait();
                result.ifPresent(name -> {
                    FileStorageImpl.storeFile(System.getProperty("user.home") + "\\Documents\\PKE\\Sokoban\\" + name + "\\board.ser", board);
                    FileStorageImpl.storeFile(System.getProperty("user.home") + "\\Documents\\PKE\\Sokoban\\" + name + "\\leaderboard.ser", leaderboard);
                });
            } return;
            case "load": {
                List<String> choices = new ArrayList<>(Arrays.asList(Objects.requireNonNull(new File(System.getProperty("user.home") + "\\Documents\\PKE\\Sokoban").list())));
                ChoiceDialog<String> dialog = new ChoiceDialog<>("", choices);
                dialog.setTitle("Choose save");
                dialog.setContentText("Choose your save:");
                Optional<String> result = dialog.showAndWait();
                if(result.isEmpty() || result.get().equals("")){return;}
                result.ifPresent(name -> {
                    try {
                        board = (Board) FileStorageImpl.readFile(System.getProperty("user.home") + "\\Documents\\PKE\\Sokoban\\"+name+"\\board.ser", board);
                        //noinspection unchecked
                        leaderboard = (ArrayList<Leaderboard>) FileStorageImpl.readFile(System.getProperty("user.home") + "\\Documents\\PKE\\Sokoban\\"+name+"\\leaderboard.ser", leaderboard);
                    } catch (ClassCastException e) {
                        Alert alert = new Alert(Alert.AlertType.ERROR);
                        alert.setTitle("Error!");
                        alert.setHeaderText("Safe file corruption!");
                        alert.setContentText("The save file contains errors and could not be used.");

                        alert.showAndWait();
                    }
                });
                if (board == null || leaderboard == null) {
                    return;
                }
                if (mediaPlayer != null) {
                    mediaPlayer.stop();
                }
                playMusic(1);
            }
        }
        pane.getScene().addEventFilter(KeyEvent.KEY_PRESSED, eventHandler);
        pane.getChildren().clear();
        initialize();
        drawMap();
    }
    TextField inputName;
    //Handles keyboard input
    final EventHandler<KeyEvent> eventHandler = new EventHandler<>() {
        @Override
        public void handle(KeyEvent event) {
            boolean playerMoved;
            switch (event.getCode()) {
                case UP: dir = new int[]{0, -1}; playerMoved = board.movePlayer(dir); drawGame(playerMoved); break;
                case DOWN: dir = new int[]{0,1}; playerMoved = board.movePlayer(dir); drawGame(playerMoved); break;
                case LEFT: dir = new int[]{-1,0}; playerMoved = board.movePlayer(dir); drawGame(playerMoved); break;
                case RIGHT: dir = new int[]{1,0}; playerMoved = board.movePlayer(dir); drawGame(playerMoved); break;
                case ESCAPE: goBackToMenu(); return;
                case R: restart();
            }
            if (board.hasWon()) {
                pane.getScene().removeEventFilter(KeyEvent.KEY_PRESSED, eventHandler);
                pane.getChildren().clear();
                Label win = new Label("You won!");
                win.setLayoutX(250.0);
                win.setLayoutY(94.0);
                win.setFont(new Font("Agency FB Bold", 36));
                pane.getChildren().add(win);
                Button backToMenu = new Button("Back to menu");
                backToMenu.setLayoutX(200.0);
                backToMenu.setLayoutY(190.0);
                Button addToLeaderBoard = new Button("Add to leaderboard");
                addToLeaderBoard.setLayoutX(300.0);
                addToLeaderBoard.setLayoutY(190.0);
                Button tryAgain = new Button("Try again");
                tryAgain.setLayoutX(260);
                tryAgain.setLayoutY(220);
                tryAgain.setOnAction(tryAgainHandler);
                inputName = new TextField();
                inputName.setLayoutX(200);
                inputName.setLayoutY(160.0);
                inputName.setMinWidth(220);
                inputName.setPromptText("Name");
                pane.getChildren().add(addToLeaderBoard);
                pane.getChildren().add(backToMenu);
                pane.getChildren().add(inputName);
                pane.getChildren().add(tryAgain);
                addToLeaderBoard.setOnAction(leaderBoardHandler);
                backToMenu.setOnAction(backToMenuHandler);
                inputName.requestFocus();
            }
        }
    };

    final EventHandler<ActionEvent> tryAgainHandler = actionEvent -> tryAgain();
    public void tryAgain() {
        restart();
        pane.getScene().addEventFilter(KeyEvent.KEY_PRESSED, eventHandler);
    }

    public void restart() {
        board = new Board(board.getMap(), board.getWidth(), board.getHeight(), 0);
        pane.getChildren().clear();
        initialize();
        drawMap();
    }

    //Handles back to menu function
    final EventHandler<ActionEvent> backToMenuHandler = actionEvent -> goBackToMenu();
    public void goBackToMenu() {
        mediaPlayer.stop();
        pane.getChildren().clear();
        pane.getScene().removeEventFilter(KeyEvent.KEY_PRESSED, eventHandler);
        initialize();
        board = null;
    }

    //Handles LeaderBoard function. Primitive at this point, but does the job
    ArrayList<Leaderboard> leaderboard = new ArrayList<>();
    final Text leaderBoardField1 = new Text();
    final Text leaderBoardField2 = new Text();
    final EventHandler<ActionEvent> leaderBoardHandler = actionEvent -> addToLeaderBoard(board.getMap(), inputName.getText(), board.getPlayerMoves());
    public void addToLeaderBoard(String map, String name, int moves) {
        boolean temp = true;
        for (Leaderboard value : leaderboard) {
            if((value.getName().equals(name)) && (value.getMap().equals(map))) {
                temp = false;
                if(value.getMoves() < moves) {
                    value.setMoves(moves);
                }
            }
        }
        if(temp) {
            leaderboard.add(new Leaderboard(map, name, moves));
        }
        Collections.sort(leaderboard);
    }

    public void showLeaderBoard() {
        if (leaderboard != null) {
            StringBuilder fieldMoves = new StringBuilder("Moves");
            StringBuilder fieldNames = new StringBuilder("Player");
            ArrayList<Leaderboard> active = new ArrayList<>();
            for (Leaderboard value: leaderboard) {
                if(value.getMap().equals(board.getMap())) {
                    active.add(value);
                }
            }
            for (Leaderboard value : active) {
                int temp = value.getMoves();
                fieldMoves.append("\n").append(temp);
            }
            for (Leaderboard value : active) {
                String temp = value.getName();
                fieldNames.append("\n").append(temp);
            }
            //System.out.println(leaderboard);
            leaderBoardField1.setText(fieldMoves.toString());
            leaderBoardField2.setText(fieldNames.toString());
        }
    }

    private String path;
    public void playMusic(int song) {
        switch(song) {
            case 1: path = "music/1.mp3"; break;
            case 2: path = "music/2.mp3"; break;
            case 3: path = "music/3.mp3";
        }
        media = new Media(new File(path).toURI().toString());
        mediaPlayer = new MediaPlayer(media);
        mediaPlayer.play();
    }

    public void drawMap() {
        //Draw background on init
        for (int i = 0; i < board.getWidth(); i++) {
            for (int j = 0; j < board.getHeight(); j++) {
                switch (board.boardTiles[i][j].getState()) {
                    case Floor: drawImage(i, j, 'F'); if (board.boardTiles[i][j].hasCrate()) { drawImage(i, j, 'C'); break; } break;
                    case Wall: drawImage(i, j, 'W'); break;
                    case Goal: drawImage(i, j, 'G'); if (board.boardTiles[i][j].hasCrate()) { drawImage(i, j, 'S'); break; }
                }
            }
        }
        int[] loc = board.getPlayer().getLocation();
        drawImage(loc[0], loc[1], 'P');
        score.setLayoutX(480);
        score.setLayoutY(75);
        score.setFont(Font.font("Agency FB Bold", 35));
        score.setText("Moves: \n" + board.getPlayerMoves());
        if (!pane.getChildren().contains(score)) {
            pane.getChildren().add(score);
        }
        showLeaderBoard();
        leaderBoardField1.setLayoutX(480);
        leaderBoardField2.setLayoutX(530);
        for(Text t : Arrays.asList(leaderBoardField1, leaderBoardField2)) {
            t.setLayoutY(190);
            t.setFont(Font.font("Agency FB Bold", 20));
            if (!pane.getChildren().contains(t)) {
                pane.getChildren().add(t);
            }
        }
    }

    final Text score = new Text("Moves: \n");
    public void drawGame(boolean playerMoved) {
        int[] loc = board.getPlayer().getLocation();
        int[] oldloc = new int[2];
        int[] behind = new int[2];
        Arrays.setAll(behind, i -> loc[i] + dir[i]);
        Arrays.setAll(oldloc, i -> loc[i] - dir[i]);

        if(board.getTile(behind[0], behind[1]).hasCrate()) {
            if(board.getTile(behind[0], behind[1]).getState() == Tile.State.Goal) {
                drawImage(behind[0], behind[1], 'S');
            } else {
                drawImage(behind[0], behind[1], 'C');
            }
        }
        if(board.getTile(loc[0], loc[1]).getState() == Tile.State.Goal) {
            drawImage(loc[0], loc[1], 'G');
        } else {
            drawImage(loc[0], loc[1], 'F');
        }
        if(playerMoved) {
            if(board.getTile(oldloc[0], oldloc[1]).getState() == Tile.State.Goal) {
                drawImage(oldloc[0], oldloc[1], 'G');
            } else {
                drawImage(oldloc[0], oldloc[1], 'F');
            }
        }
        drawImage(loc[0], loc[1], 'P');
        score.setText("Moves: \n" + board.getPlayerMoves());
    }

    private void drawImage(int x, int y, char type) {
        try {
            ImageView goal = new ImageView(new Image(new FileInputStream("img/goal.png")));
            ImageView floor = new ImageView(new Image(new FileInputStream("img/floor.png")));
            ImageView player = new ImageView(new Image(new FileInputStream("img/player.png")));
            ImageView goalCrate = new ImageView(new Image(new FileInputStream("img/goalcrate.png")));
            ImageView wall = new ImageView(new Image(new FileInputStream("img/wall.png")));
            ImageView crate = new ImageView(new Image(new FileInputStream("img/crate.png")));

            switch(type) {
                case 'G': pane.getChildren().add(setImage(goal, x, y)); break;
                case 'C': pane.getChildren().add(setImage(crate, x, y)); break;
                case 'F': pane.getChildren().add(setImage(floor, x, y)); break;
                case 'P': pane.getChildren().add(setImage(player, x, y)); break;
                case 'S': pane.getChildren().add(setImage(goalCrate, x, y)); break;
                case 'W': pane.getChildren().add(setImage(wall, x, y));
            }
        }
        catch (FileNotFoundException e) {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Error!");
            alert.setHeaderText("File not found!");
            alert.setContentText("One of the image files could not be found. Please ensure that no assets are missing. Closing game.");

            alert.showAndWait();
            System.exit(1);
        }
    }

    //Set image attributes
    private ImageView setImage(ImageView x, int i, int j) {
        x.setX((i*35)+((double)1200/board.getWidth()));
        x.setY((j*35)+20);
        x.setFitHeight(35);
        x.setFitWidth(35);
        x.setPreserveRatio(true);

        return x;
    }

    @Override
    public String toString() {
        String leaderboardString = leaderboard.stream().map(Leaderboard::toString).collect(Collectors.joining(";"));
        return "board=" +
                    "string:" + board +
                    "-width:" + board.getWidth() +
                    "-height:" + board.getHeight() +
                ", map=" + board.getMap() +
                "leaderboard=" + leaderboardString;
    }
}
