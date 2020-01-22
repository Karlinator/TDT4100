package stateandbehavior;

public class Account {
	private double balance;
	private double interestRate;
	
	public Account(double balance, double interestRate) {
		this.balance = balance;
		this.interestRate = interestRate;
	}
	
	public static void main(String[] args) {
		Account a = new Account(0, 0);
		a.deposit(100);
		a.setInterestRate(32.5);
		a.addInterest();
		System.out.println(a.getBalance());
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
