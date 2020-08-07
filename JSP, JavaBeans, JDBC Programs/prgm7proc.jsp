<%@ page contentType="text/html" language="java"%>

<%@ taglib prefix="t" uri="tlds/customTag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Question 7 | Substring</title>
</head>
<body>
	<t:substring input="${param.input}" start="${param.start}" end="${param.end}"/>
</body>
</html>