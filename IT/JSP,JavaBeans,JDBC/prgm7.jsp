<%@ page contentType="text/html" language="java"%>
<%@ taglib prefix="t" uri="tlds/customTag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Question 7 | Substring</title>
</head>
<body>
<center>
<h1><font color="green">{ Substring Example }</font></h1>
	
<h1 title="input = Programming language."><t:substring input="Programming language." start="11" end="20"/></h1>
<br><br>

<c:choose>
<c:when test="${param.submit != null }">
<h1><font color="green">{ Substring }</font></h1>
	
<h1 title="input = ${param.input} ; start = ${param.start} ; end = ${param.end}"><t:substring input="${param.input}" start="${param.start}" end="${param.end}"/></h1>
<br><br>
</c:when>
<c:otherwise>
<h1><font color="red">{ Please fill the following fields to get result }</font></h1>
</c:otherwise>

</c:choose>

<form method="get" action="prgm7.jsp">
	<font color="green">String</font><input type="text" name="input">
	<font color="green">Start</font><input type="number" name="start">
	<font color="green">End</font><input type="number" name="end">
	<br><br>
	<input type="submit" name="submit" value="Get Substring">
</form>
</center>
</body>
</html>
