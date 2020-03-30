package inheritance;

public class DebitAccount extends AbstractAccount {

	public DebitAccount() {
		super();
	}

	@Override
	void internalWithdrawal(double amount) {
		if (balance < amount) { 
			throw new IllegalStateException();
		} else {
			balance -= amount;
		}

	}

}
