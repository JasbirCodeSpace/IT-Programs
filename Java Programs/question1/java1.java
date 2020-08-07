package question1;

import java.util.Scanner;

import question1.Bank;
import question1.BankAccount;

public class java1{
	public static void main(String[] args) {
    Bank bank = new Bank();
    Scanner input = new Scanner(System.in);
    int choice;

	do{
		System.out.println("\t###### Menu ######");
		System.out.println("\t(1) Add account in bank");
		System.out.println("\t(2) Get total balance in bank");
		System.out.println("\t(3) Get account number with max and min balance in bank");
		System.out.println("\t(4) Find an account in bank");
		System.out.println("\t(5) Find accounts with specific balance in bank");
		System.out.println("\t(6) Show All account");
         choice = input.nextInt();
    
        switch(choice){


        	case 1 : if(bank.addAccount())
        	         System.out.println("Successfully created account");
        	         else
        	         System.out.println("Unsuccessfull : account already exist");	
        	         break;
        	case 2 : double total = bank.getTotalBalance()  ;
        	          System.out.println("Total balance in bank = "+total);
        	          break;
        	case 3 : bank.getMaxMin();
        	         break;

        	case 4 : System.out.println("Enter the account number");
        	         int x = input.nextInt();
        	         BankAccount acc = bank.findAccount(x);

        	         if(acc != null){
        	         	System.out.println("Yes, "+x+" account exist");
                       bank.individual(acc);
        	         }
        	         else
        	         	System.out.println("No, "+x+" account does not exist");

                     
        	         
        	         break;

        	case 5 :   System.out.println("Enter the limit of balance");
        	           float bal = input.nextFloat();
        	           int count = bank.getNumber(bal);
        	           System.out.println(count+" accounts having atleat "+bal+" balance");
        	           break;

        	 case 6 :  bank.show();
        	           break;                 

        	                                   
        }
	  }	while(choice>=1 && choice<=6);
	}
}