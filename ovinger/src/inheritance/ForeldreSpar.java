package inheritance;

public class ForeldreSpar extends SavingsAccount {
	private final int limit;
	private int remainingWithdrawals;

	public ForeldreSpar(double interest, int limit) {
		super(interest);
		this.limit = limit;
		remainingWithdrawals = limit;
	}
	
	@Override
	public void endYearUpdate() {
		balance = balance * (1+interest);
		remainingWithdrawals = limit;
	}
	
	@Override
	public void withdraw(double amount) {
		if (amount <= 0) {
			throw new IllegalArgumentException();
		} else if (balance < amount || remainingWithdrawals < 1) { 
			throw new IllegalStateException();
		} else {
			balance -= amount;
			remainingWithdrawals--;
		}
	}
	
	public int getRemainingWithdrawals() {
		return remainingWithdrawals;
	}

}
