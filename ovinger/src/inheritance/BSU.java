package inheritance;

import inheritance.SavingsAccount;

public class BSU extends SavingsAccount {

	private double limit;
	private double depositedThisYear;

	public BSU(double interest, double limit) {
		super(interest);
		this.limit = limit;
		depositedThisYear = 0;
		
	}
	
	@Override
	public void deposit(double amount) {
		if (amount <= 0) {
			throw new IllegalArgumentException();
		} else if (amount + depositedThisYear > limit) {
			throw new IllegalStateException();
		} else {
			balance += amount;
			depositedThisYear += amount;
		}

	}
	
	@Override
	public void withdraw(double amount) {
		if (amount >= 0) {
			if (balance > amount && depositedThisYear > amount) {
				balance -= amount;
			} else {
				throw new IllegalStateException();
			}
		} else {
			throw new IllegalArgumentException();
		}

	}
	
	public void endYearUpdate() {
		balance = balance * (1+interest);
		depositedThisYear = 0;
	}
	
	public double getTaxDeduction() {
		return depositedThisYear*0.2;
	}

}
