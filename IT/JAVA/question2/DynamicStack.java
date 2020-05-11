package question2;
import question2.Stack;

import java.util.Scanner;
import java.util.ArrayList;

public class DynamicStack extends Stack{
    
    private int top=-1;

    private ArrayList<Integer> stack = new ArrayList<Integer>();

    int push(int x){

      	stack.add(x);

        return stack.get(++top);

    }

    int pop(){
    	if(top<0){
    		System.out.println("Error : Stack Underflow");
    		return -1;
    	}

    	else{
            
    		int elem = stack.remove(top--);
    		
    		return elem;
    	}
    }

    void display(){
      System.out.print("Stack : ");
    	for(int elem: stack){
    		System.out.print(elem+" -> ");
    	}
    	System.out.println();
    }
    
}