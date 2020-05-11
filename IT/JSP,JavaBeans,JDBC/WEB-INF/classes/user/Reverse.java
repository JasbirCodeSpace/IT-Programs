package user;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class Reverse extends SimpleTagSupport{

	private String input;

	public void setInput(String input){
        this.input= input;
	}

	public void doTag() throws JspException,IOException{
		JspWriter out = getJspContext().getOut();

		for(int i=input.length()-1;i>=0;i--)
			out.print(input.charAt(i));
	}
}