<%@ page contentType="text/html" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
	<title>Question 10 | USER</title>

	<style type="text/css">
				span{
			font-size: 50px;
		}
	</style>
</head>
<body>
<center>
<h1><font color="green">Hello</font></h1>
<span>< <c:out value="${name}"/> ></span>

<br><br>

<h1><font color="green">You Have Ordered</font></h1>
 <c:choose>

   <c:when test="${order1 == null || order1==''}">
     <span>Nothing</span>
   </c:when>

   <c:otherwise>
     <span>
     <c:out value="${order1}"/>
     </span>
   </c:otherwise>
 </c:choose>

</center>
</body>
</html>