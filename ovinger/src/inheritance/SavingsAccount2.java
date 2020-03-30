package inheritance;

public class SavingsAccount2 extends AbstractAccount {

	private int withdrawals;
	//private int withdrawalsThisYear;
	private double fee;

	public SavingsAccount2(int withdrawals, double fee) {
		super();
		this.withdrawals = withdrawals;
		this.fee = fee;
	}

	@Override
	void internalWithdrawal(double amount) {
		if (balance < amount || balance < amount+fee && withdrawals == 0) { 
			throw new IllegalStateException();
		} else {
			if (withdrawals > 0) {
				balance -= amount;
				withdrawals--;				
			} else {
				balance -= amount+fee;
			}
		}

	}

}
