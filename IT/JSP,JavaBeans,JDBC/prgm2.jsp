<%@ page language="java" contentType="text/html"%>
<%@ page import="javax.naming.*,java.sql.*,java.io.*,java.lang.*,java.text.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Question 2 | Operation</title>
</head>
<body>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));

String opt =  request.getParameter("opt");

//for(int i=0;i<opt.length;i++){
out.println("Using getParameter() ....");
out.print("<br />");
switch(opt){
	
	case "ADD" : out.print(num1+" "+"+"+" "+num2+" = ");
				 out.print(num1+num2);
				 out.print("<br />");
				 break;
	case "SUB" : out.print(num1+" "+"-"+" "+num2+" = ");
				 out.print(num1-num2);
				 out.print("<br />");

				 break;
	case "DIV" : out.print(num1+" "+"/"+" "+num2+" = ");
				 out.print(num1/num2);
				 out.print("<br />");

				 break;
	case "MUL" : out.print(num1+" "+"x"+" "+num2+" = ");
    			 out.print(num1*num2);
    			 out.print("<br />");

    			 break;
//}
}
%>

<c:set var="opt2" value='${param["opt"]}'/>
<%

out.println("Using Expression Language ....");
out.print("<br />");

switch((String)pageContext.getAttribute("opt2")){
	
	case "ADD" : out.print(num1+" "+"+"+" "+num2+" = ");
				 out.print(num1+num2);
				 out.print("<br />");
				 break;
	case "SUB" : out.print(num1+" "+"-"+" "+num2+" = ");
				 out.print(num1-num2);
				 out.print("<br />");

				 break;
	case "DIV" : out.print(num1+" "+"/"+" "+num2+" = ");
				 out.print(num1/num2);
				 out.print("<br />");

				 break;
	case "MUL" : out.print(num1+" "+"x"+" "+num2+" = ");
    			 out.print(num1*num2);
    			 out.print("<br />");

    			 break;
}


	
%>
</body>
</html>