<%@ page contentType="text/html" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<title>Question 1 | Student Bean</title>
</head>
<body>

	<jsp:useBean id="Student" class="user.StudentBean">
    	<jsp:setProperty name="Student" property="firstName" value="sam"/>
    	<jsp:setProperty name="Student" property="lastName" value="eliot"/>
    	<jsp:setProperty name="Student" property="rollNo" value="1"/>
    	<jsp:setProperty name="Student" property="age" value="19"/>
    </jsp:useBean>

    	<jsp:getProperty name="Student" property="firstName" />
    	<jsp:getProperty name="Student" property="lastName" />
    	<jsp:getProperty name="Student" property="rollNo" />
    	<jsp:getProperty name="Student" property="age" />

 </body>
 </html>   	