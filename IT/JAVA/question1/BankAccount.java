package question1;

public class BankAccount{

	int accountNumber;
	float balance;

    BankAccount(int accountNumber,float balance){
       this.accountNumber = accountNumber;
       this.balance = balance;
    }
	float deposit(float x){
		this.balance += x;
		if(this.balance>10000)
			this.balance = taxDeduct(this.balance);
		return balance;
	}
	float withdraw(float x){
		if(this.balance<x){
			System.out.println("Insufficient money");
			return -1;
		}
		else
		this.balance -= x;
		return balance;
	}
	int getAccountNo(){
		return accountNumber;
	}
	float getBalance(){
		return balance;
	}
	float taxDeduct(float x){
      x -= x*0.2;
      return x;
	}

}