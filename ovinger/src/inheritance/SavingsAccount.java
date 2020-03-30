package inheritance;

public class SavingsAccount implements Account {
	//THIS IS A BAD IDEA BECAUSE ROUNDING ERRORS!
	//Money should be stored as an int or BigDecimal in number of whole cents (or wcichever smallest denomination).
	//I do this under protest and in duress.
	protected double balance;
	protected double interest;

	public SavingsAccount(double interest) {
		balance = 0;
		this.interest = interest;
	}
	
	@Override
	public void deposit(double amount) {
		if (amount <= 0) {
			throw new IllegalArgumentException();
		} else {
			balance += amount;
		}

	}

	@Override
	public void withdraw(double amount) {
		if (amount <= 0) {
			throw new IllegalArgumentException();
		} else if (balance < amount) { 
			throw new IllegalStateException();
		} else {
			balance -= amount;
		}
	}

	@Override
	public double getBalance() {
		return balance;
	}
	
	public void endYearUpdate() {
		balance = balance * (1+interest);
	}

}
