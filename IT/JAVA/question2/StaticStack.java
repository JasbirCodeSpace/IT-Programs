package question2;
import question2.Stack;

import java.util.Scanner;
import java.util.Arrays;

public class StaticStack extends Stack{
    
    private int top=-1;
    private int size =10;
    private int[] stack = new int[size];

    int push(int x){
      if(top>=size-1){
      	 System.out.println("Error : Stack Overflow");
      	 return -1;

      }
      else{
      	stack[++top] = x;
      }
      return stack[top];

    }

    int pop(){
    	if(top<0){
    		System.out.println("Error : Stack Underflow");
    		return -1;
    	}

    	else{
            
    		int elem = stack[top];
    		stack[top--] = 0;
    		return elem;
    	}
    }

    void display(){
      System.out.print("Stack : ");
    	for(int elem: stack){
    		if(elem == 0)
    			elem = -1;
    		System.out.print(elem+" -> ");
    	}
    	System.out.println();
    }
    
}