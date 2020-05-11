package user;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.io.*;

public class Substring extends SimpleTagSupport{

	private String input;
	private int start;
	private int end;

	public void setInput(String input){
		this.input = input;
	}

	public void setStart(int start){
		this.start = start;
	}

	public void setEnd(int end){
		this.end = end;
	}

	public void doTag() throws JspException,IOException{
         JspWriter out = getJspContext().getOut();

         for(int i=start;i<=end;i++){
         	out.print(input.charAt(i));
         }
	}
}