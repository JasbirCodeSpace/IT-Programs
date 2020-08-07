<%@ page contentType="text/html" language="java"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Quesstion 5 | ODD & EVEN</title>
</head>
<body>
<c:set var="text" value="${param.text}"/>
<c:set var="choice" value="${param.choice}"/>
<c:set var="flag" value="true"/>
<center>
	<h2>TEXT :: <c:out value="${text}"/></h2>

<c:if test='${fn:contains(choice,"odd")}'>
<c:forEach var="i" begin="0" end="${fn:length(text)-1}" step="1">
 <c:if test="${i%2 eq 1}">
  <c:if test='${fn:substring(text,i,i+1) != "a" && fn:substring(text,i,i+1) != "e"  && fn:substring(text,i,i+1) != "i"  && fn:substring(text,i,i+1) != "o" && fn:substring(text,i,i) != "u" && fn:substring(text,i,i+1) != "A" && fn:substring(text,i,i+1) != "E"  && fn:substring(text,i,i+1) != "I"  && fn:substring(text,i,i+1) != "O" && fn:substring(text,i,i) != "U"}'>

   <c:set var="flag" value="false"/>
  </c:if>
</c:if>
</c:forEach>
</c:if>
<c:if test='${fn:contains(choice,"even")}'>
<c:forEach var="i" begin="0" end="${fn:length(text)-1}">
 <c:if test="${i%2 eq 0}">

  <c:if test='${fn:substring(text,i,i+1) != "a" && fn:substring(text,i,i+1) != "e"  && fn:substring(text,i,i+1) != "i"  && fn:substring(text,i,i+1) != "o" && fn:substring(text,i,i) != "u" && fn:substring(text,i,i+1) != "A" && fn:substring(text,i,i+1) != "E"  && fn:substring(text,i,i+1) != "I"  && fn:substring(text,i,i+1) != "O" && fn:substring(text,i,i) != "U"}'>
   <c:set var="flag" value="false"/>

  </c:if>
</c:if>

</c:forEach>
</c:if>

<c:if test="${flag eq 'true'}">
<h3>You win</h3>
</c:if>
<c:if test="${flag eq 'false'}">
You lose
</c:if>
</center>
</body>
</html>