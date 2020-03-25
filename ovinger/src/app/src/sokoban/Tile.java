package sokoban;

import java.io.Serializable;

public class Tile implements Serializable {
    private boolean crate;

    public enum State {
        Wall,
        Floor,
        Goal
    }
    final State state;

    public Tile(State state, boolean crate) {
        this.state = state;
        this.crate = crate;
    }

    public State getState() {
        return state;
    }

    public boolean hasCrate() {
        return crate;
    }

    public void setCrate(boolean crate) {
        this.crate = crate;
    }

    public boolean isFinished() {
        return (state != State.Goal) || crate;
    }

    public String toString() {
        switch (state) {
            case Wall: return "W";
            case Floor: { if (crate) {return "C";} else {return "F";} }
            case Goal: { if (crate) {return "S";} else {return "G";} }
        }
        return "";
    }
}