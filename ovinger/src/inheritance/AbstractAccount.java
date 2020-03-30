package inheritance;

public abstract class AbstractAccount {
	
	protected double balance;

	public AbstractAccount() {
		balance = 0;
	}
	
	public void deposit(double amount) {
		if (amount <= 0) {
			throw new IllegalArgumentException();
		} else {
			balance += amount;
		}

	}
	
	public void withdraw(double amount) {
		if (amount <= 0) {
			throw new IllegalArgumentException();
		} else {
			internalWithdrawal(amount);
		}
	}
	
	abstract void internalWithdrawal(double amount);
	
	public double getBalance() {
		return balance;
	}

}
