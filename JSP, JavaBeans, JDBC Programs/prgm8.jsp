<%@ page contentType="text/html" language="java"%>
<%@ taglib prefix="t" uri="tlds/customTag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Question 8 | Reverse</title>
</head>
<body>
<center>
<h1><font color="green">{ Reverse Example }</font></h1>
	
<h1 title="input = Programming language."><t:reverse input="Programming language." /></h1>
<br><br>

<c:choose>
<c:when test="${param.submit != null }">
<h1><font color="green">{ Reverse String }</font></h1>
	
<h1 title="input = ${param.input} "><t:reverse input="${param.input}" /></h1>
<br><br>
</c:when>
<c:otherwise>
<h1><font color="red">{ Please fill the following fields to get result }</font></h1>
</c:otherwise>

</c:choose>

<form method="get" action="prgm8.jsp">
	<font color="green">String</font><input type="text" name="input">
	<br><br>
	<input type="submit" name="submit" value="Reverse String">
</form>
</center>
</body>
</html>
