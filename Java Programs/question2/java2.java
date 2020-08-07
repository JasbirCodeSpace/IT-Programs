package question2;

import question2.StaticStack;
import question2.DynamicStack;
import question2.Stack;


import java.util.Scanner;

public class java2{
	
	 public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);

		int choice =0;

		Stack stack;
		int elem;

	do{
		System.out.println("\t###### Menu ######");
		System.out.println("\t(1) Use Static stack");
		System.out.println("\t(2) Use Dynamic stack");

		choice = input.nextInt();

		switch(choice){

			case 1 :  stack = new StaticStack();
						do{
			          		System.out.println("\t###### Static Stack Menu ######");
		                    System.out.println("\t(1) Push");
							System.out.println("\t(2) Pop");
							System.out.println("\t(3) Display");
                            choice = input.nextInt();

							switch(choice){

								case 1: System.out.println("Enter an element to add ...");
								       elem = input.nextInt();
								       if(stack.push(elem)!=-1){
								       	System.out.println("Element added successfully");
								       }
								       else{

								       }
								       break;

								case 2:
								       elem = stack.pop();
								       if(elem!=-1){
								       	System.out.println("Popped element :: "+elem);
								       }
								       else{

								       }
								       break;     

								case 3 : stack.display();
								         break;  
								default : break; 
							}
						}while(choice>=1 && choice<=3 );

			case 2 :  stack = new DynamicStack();
						do{
			          		System.out.println("\t###### Static Stack Menu ######");
		                    System.out.println("\t(1) Push");
							System.out.println("\t(2) Pop");
							System.out.println("\t(3) Display");
                            choice = input.nextInt();

							switch(choice){

								case 1: System.out.println("Enter an element to add ...");
								       elem = input.nextInt();
								       if(stack.push(elem)==elem){
								       	System.out.println("Element added successfully");
								       }
								       else{

								       }
								       break;

								case 2:
								       elem = stack.pop();
								       if(elem!=-1){
								       	System.out.println("Popped element :: "+elem);
								       }
								       else{

								       }
								       break;  

								case 3 : stack.display();
								         break;  
								default : break;                  

							}
						}while(choice>=1 && choice<=3 );	

						break;

		    default : break;							


		}

	}while(choice==1 | choice==2);
}
}