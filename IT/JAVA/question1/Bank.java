package question1;

import java.util.ArrayList;
import java.util.Scanner;


import question1.BankAccount;

public class Bank{
	
	ArrayList<BankAccount> accounts = new ArrayList<BankAccount>();
    

    Scanner input = new Scanner(System.in);

    boolean addAccount(){
       System.out.println("Enter your account number ...");
       int accountNumber = input.nextInt();
       
       System.out.println("Enter initial ammount to deposit  ...");
       int balance = input.nextInt();
       
       BankAccount a1 = new BankAccount(accountNumber,balance);
       boolean flag = false;

        for(BankAccount acc : accounts){
    		if(acc.getAccountNo() == a1.getAccountNo())
    			flag = true;
    	}

       if(flag==false){
       accounts.add(a1);
       return true;
       }
       else
       return false;

    }

    double getTotalBalance(){
    	double total = 0;

    	for(BankAccount acc : accounts){
    		total += acc.getBalance();
    	}

    	return total;
    }

    void getMaxMin(){
    	float max = accounts.get(0).getBalance();
    	float min = accounts.get(0).getBalance();

        int maxAcc = accounts.get(0).getAccountNo();
        int minAcc = accounts.get(0).getAccountNo();

    	for(BankAccount acc : accounts){
    		if(acc.getBalance()>max){
    			max = acc.getBalance();
                maxAcc = acc.getAccountNo();
    		}

    		if(acc.getBalance()<min){
    			min = acc.getBalance();
    			minAcc = acc.getAccountNo();
    		}
    	}

    	System.out.println("Maximum Balance");
    	System.out.println("Account Number :: "+maxAcc+" , Balance :: "+max);

    	System.out.println("Minimum Balance");
    	System.out.println("Account Number :: "+minAcc+" , Balance :: "+min);

    }

    BankAccount findAccount(int x){
        for(BankAccount acc : accounts){
        	if(acc.getAccountNo() == x)
        		return acc;
        }
        return null;
    }

    int getNumber(float bal){
    	int count=0;

    	for(BankAccount acc : accounts){
    		if(acc.getBalance() == bal)
    			count++;
    	}

    	return count;


    }

    void show(){
    	  for(BankAccount acc : accounts){
             System.out.println("Account No = "+acc.getAccountNo()+" , Balance = "+acc.getBalance());
    	}
    }

    void individual(BankAccount acc){

    	int choice;
    	float bal;
    	float newBalance;
    	do{
		System.out.println("\t###### Menu ######");
		System.out.println("\t(1) Deposit Money");
		System.out.println("\t(2) Withdraw Money");
        choice = input.nextInt();
 
        switch(choice){


        	case 1 : 
        	         System.out.println("Enter amount to deposit ...");
        	          bal = input.nextFloat();
        	          newBalance = acc.deposit(bal);
                     System.out.println("Rs."+bal+" Sucessfully added to your account");
                     System.out.println("Current balance is "+"Rs."+newBalance);	
        	         break;
        	case 2 : System.out.println("Enter amount to withdraw ...");
        	          bal = input.nextFloat();
        	          newBalance = acc.withdraw(bal);
        	         if(newBalance !=-1){
                     System.out.println("Rs."+bal+" Sucessfully withdraw from your account");
                     System.out.println("Current balance is "+"Rs."+newBalance);
                     }
                     else{
                     	System.out.println("Current balance is "+"Rs."+acc.getBalance());
                     }	
        	         break;
        }	         

	}while(choice>=1 && choice<=3);
    }

}