package stateandbehavior;

public class Account {
	private double balance;
	private double interestRate;
	
	public Account() {
		
	}
	public void deposit(double money) {
		if (money > 0) {
			balance += money;
		}
	}
	
	public void addInterest() {
		balance = balance*(1+(interestRate/100));
	}
	
	public double getBalance() {
		return balance;
	}
	
	public double getInterestRate() {
		return interestRate;
	}
	
	public void setInterestRate(double rate) {
		interestRate = rate;
	}
	
}
