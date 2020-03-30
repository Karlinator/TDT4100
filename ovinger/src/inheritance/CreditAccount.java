package inheritance;

public class CreditAccount extends AbstractAccount {
	
	private double creditLine;

	public CreditAccount(double creditLine) {
		super();
		if (creditLine < 0) {
			throw new IllegalArgumentException();
		} else {
			this.creditLine = creditLine;
		}
	}

	@Override
	void internalWithdrawal(double amount) {
		if (balance+creditLine < amount) { 
			throw new IllegalStateException();
		} else {
			balance -= amount;
		}

	}

	public double getCreditLine() {
		return creditLine;
	}

	public void setCreditLine(double creditLine) {
		if (creditLine < 0) {
			throw new IllegalArgumentException();
		} else if (balance+creditLine < 0) {
			throw new IllegalStateException();
		} else {
			this.creditLine = creditLine;
		}
	}
	
	

}
