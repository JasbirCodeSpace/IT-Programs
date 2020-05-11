package user;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;

public class Today extends SimpleTagSupport{

	public void doTag()throws JspException,IOException{
		Date date = new Date();
        JspWriter out = getJspContext().getOut();
		out.print("<h1><font color='green'>{ Today's Date }</font></h1>");
		out.print("<h1 title='Today\'s date '>");
		out.print(date.getDate()+"/"+(date.getMonth()+1)+"/"+(date.getYear()-100));
		out.print("</h1>");
		out.print("<br><br>");

		out.print("<h1><font color='green'>{ Today's Time }</font></h1>");
		out.print("<h1 title='Today\'s Time '>");
		out.print(date.getHours()+":"+date.getMinutes()+":"+date.getSeconds());
		out.print("</h1>");
		out.print("<br><br>");


	}
}