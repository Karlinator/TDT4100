package stateandbehavior;

import java.util.ArrayList;
import java.util.List;
import java.lang.*;

public class StopWatch {
	private int time;
	private int ticks;
	private List<Integer> laps = new ArrayList<Integer>();
	private boolean started;
	private boolean stopped;

	public StopWatch() {
		time = 0;
		ticks = 0;
		started = false;
		stopped = false;
		System.out.println(laps);
	}
	public static void main(String[] args) {
		StopWatch s = new StopWatch();
		s.start();
		s.tick(5);
		s.lap();
		System.out.println(s.getTime());
		s.tick(3);
		s.lap();
		System.out.println(s.getLastLapTime());
		System.out.println(s.getTime());

	}
	public boolean isStarted() {
		return started;
	}

	public boolean isStopped() {
		return stopped;
	}

	public int getTicks() {
		return ticks;
	}

	public int getTime() {
		if (!isStarted()) {
			return -1;
		} else {
			return time;
		}
	}

	public void tick(int t) {
		ticks += t;
		if (isStarted() && !isStopped()) {
			this.time += t;
		}
	}

	public void start() {
		started = true;
	}

	public int getLapTime() {
		if (!isStarted()) {
			return -1;
		} else if (laps.size() == 0) {
			return getTime();
		} else {
			return getTime() - laps.get(laps.size() -1);
		}
	}

	public int getLastLapTime() {
		if (laps.size() == 0) {
			return -1;
		} else if (laps.size() == 1) {
			return laps.get(0);
		} else {
			return laps.get(laps.size()-1) - laps.get(laps.size()-2);
		}
	}

	public void lap() {
		int t = getTime();
		laps.add(t);
	}

	public void stop() {
		stopped = true;
		lap();
	}




}
