package user;

import java.io.*;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;

public class MyTagHandler extends SimpleTagSupport{

   private String name;

    public void setName(String name){
    	this.name = name;
    }
	public void doTag() throws JspException,IOException{

        JspWriter out = getJspContext().getOut();
        out.println("Hello "+name);
	}

	
} 