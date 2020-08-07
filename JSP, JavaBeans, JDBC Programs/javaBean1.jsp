<%@ page contentType="text/html" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<title>Question 1 | Student Bean</title>
</head>
<body>
	
  


	<center>
		 <h1><font color="green">{ Set Javabean Property }</font></h1>
   <form method="GET" action="javaBean1.jsp" id="form1">
   	<span><font color="green">Roll No</font><input type="number" name="rollno"></span>
   	<span><font color="green">First Name</font><input type="text" name="fname"></span>
   	<span><font color="green">Last Name</font><input type="text" name="lname"></span>
   	<span><font color="green">Age</font><input type="number" name="age"></span>
   	<input type="text" name="value" hidden="true">
   	<h1><input type="submit" name="get" value="SUBMIT"></h1>
   </form>
     <br><br><br>
   	<h1><font color="green">{ Get Javabean Property }</font></h1>
   <form method="GET" action="javaBean1.jsp" id="form2">
   	<span><font color="green">Roll No</font><input type="number" name="rollno"></span>
   	<span><font color="green">First Name</font><input type="text" name="fname"></span>
   	<span><font color="green">Last Name</font><input type="text" name="lname"></span>
   	<span><font color="green">Age</font><input type="number" name="age"></span>
   	<input type="text" name="value" hidden="true">
   	<h1><input type="submit" name="set" value="SUBMIT"></h1>
   </form>
</center>

<c:choose>
  <c:when test="${param.set !=null}">	
  <c:choose>
    <c:when test="${not empty param.rollno && not empty param.fname && not empty param.lname && not empty param.age }">
     <jsp:useBean id="Student" class="user.StudentBean">
    	<jsp:setProperty name="Student" property="firstName" value="${param.fname}"/>
    	<jsp:setProperty name="Student" property="lastName" value="${param.lname}"/>
    	<jsp:setProperty name="Student" property="rollNo" value="${param.rollno}"/>
    	<jsp:setProperty name="Student" property="age" value="${param.age}"/>
    </jsp:useBean>	
    </c:when>
    <c:otherwise>
    	
    </c:otherwise>
  </c:choose>
</c:when>

  <c:when test="${param.get !=null}">	
  <c:choose>
    <c:when test="${not empty param.rollno && not empty param.fname && not empty param.lname && not empty param.age }">
    	<jsp:getProperty name="Student" property="firstName" />
    	<jsp:getProperty name="Student" property="lastName" />
    	<jsp:getProperty name="Student" property="rollNo" />
    	<jsp:getProperty name="Student" property="age" />
    </c:when>
    <c:otherwise>
    	
    </c:otherwise>
  </c:choose>
</c:when>

</c:choose>

<style type="text/css">
	span{
		margin-left: 20px;
	}
</style>
</body>
</html>