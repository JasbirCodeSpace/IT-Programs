
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.lang.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Question 1 | Pattern</title>
</head>
<body>
<%

   if(request.getParameter("method").equals("scriptlet")){
      out.print("Using Scriptlet ....");
   out.print("<br />");
   int x =Integer.parseInt(request.getParameter("num"));
    for(int i=0;i<x;i++){
   for(int j=0;j<=i;j++){
	out.print(j+1 + "  ");
    }
    out.println(" <br/>");
}

return;

}

%>

<%
   out.print("Using c:forEach ....");
   out.print("<br />");
 %>  
<c:forEach var="i" begin="0" end="${param.num}">
   <c:forEach var="j" begin="1" end="${i}">
     <c:out value="${j} "/>
   </c:forEach>
     <br />
</c:forEach>
</body>
</html>
