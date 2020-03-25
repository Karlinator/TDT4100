package sokoban;

import java.io.Serializable;

public class Leaderboard implements Comparable<Leaderboard>, Serializable {
    private final String map;
    private final String name;
    private int moves;

    public Leaderboard(String map, String name, int moves) {
        this.map = map;
        this.name = name;
        this.moves = moves;
    }

    public String getMap() { return map; }

    public String getName() {
        return name;
    }

    public int getMoves() {
        return moves;
    }

    public void setMoves(int newMoves) { moves = newMoves; }

    @Override
    public int compareTo(Leaderboard leaderboard) {
        return (Integer.compare(this.getMoves(), leaderboard.getMoves()));
    }

    @Override
    public String toString() {
        return map + " " + name + " " + moves;
    }
}
