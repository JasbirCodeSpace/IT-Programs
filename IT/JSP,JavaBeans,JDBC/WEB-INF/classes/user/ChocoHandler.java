package user;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class ChocoHandler extends SimpleTagSupport{
	 private String texture ;

	 public void setTexture(String texture){
	 	this.texture = texture;
	 }

	 public void doTag() throws JspException,IOException{

	 	JspWriter out = getJspContext().getOut();
	 	if(texture.equals("Chewy"))
	 		out.println("FiveStar,BarOne");
	    else if(texture.equals("Crunchy"))
	    	out.println("Munch,KitKat");
	    else
	    	out.println("Undefined texture value :(");
	 }

}
// compile statement
//javac -cp C:\tomcat\lib\jsp-api.jar ChocoHandler.java