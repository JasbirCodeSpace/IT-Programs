<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
   <head>
      <title>User Info Entry Form</title>
   </head>
   <body bgcolor="white">
      <form action="prgm3.jsp" method="post">
         <input type="hidden" name="submitted" value="true">
         <table>
            <tr>
               <td>Name:</td>
               <td>
                  <c:if test="${param.submitted && empty param.userName}">
                  <font color="red">Please Enter Your Name</font>
               </c:if>
               </td>
               <td>
                  <input type="text" name="userName" value="<c:out value="${param.userName}" />">
               </td>
            </tr>
            <tr>
               <td>Birth Date:</td>
               <td>
                  <c:if test="${param.submitted && empty param.birthDate}">
                  <font color="red">Please Enter Your Birth Date</font>
                  </c:if>
               </td>
               <td>
                  <input type="text" name="birthDate" value="<c:out value="${param.birthDate}" />">
               </td>
               <td>(Use format yyyy-mm-dd)</td>
            </tr>
            <tr>
               <td>Email Address:</td>
               <td>
                  <c:if test="${param.submitted && empty param.emailAddr}">
                   <font color="red">Please Enter Your Email Address</font>
                  </c:if>
               </td>

               <td>
                  <input type="text" name="emailAddr" value="<c:out value="${param.emailAddr}" />">
               </td>
               <td>(Use format name@company.com)</td>
            </tr>
            <tr>
               <td>Gender:</td>
               <td></td>
               <td>
                  <c:choose>
                  <c:when test="${param.gender == 'f'}">
                  <input type="radio" name="gender" value="m" >Male<br>
                  <input type="radio" name="gender" value="f" checked>Female
               </c:when>
               <c:otherwise>
                 <input type="radio" name="gender" value="m" checked>Male<br>
                  <input type="radio" name="gender" value="f" >Female
            </c:otherwise>
         </c:choose>
               </td>
            </tr>
            <tr>
               <td>Lucky number:</td>
               <td>
                  <c:if test="${param.submitted && (param.luckyNumber < 1 || param.luckyNumber > 100)}">
                  <font color="red">
                  Please Enter Your Lucky Number Within Limit
                  </font>
                  </c:if>
               </td>
               <td>
                  <input type="text" name="luckyNumber" value="<c:out value="${param.luckyNumber}"/>">
               </td>
               <td>(A number between 1 and 100)</td>
            </tr>
            <c:forEach items="${paramValues.food}" var="current">
            <c:choose>
            <c:when test="${current == 'Pizza'}">
                <c:set var="pizzaSelected" value="true" />
            </c:when>
            <c:when test="${current == 'Pasta'}">
               <c:set var="pastaSelected" value="true" />
            </c:when>
            <c:when test="${current == 'Chinese'}">
               <c:set var="chineseSelected" value="true" />
            </c:when>
            <c:otherwise>
               <c:set var="invalidSelection" value="true" />
            </c:otherwise>
            </c:choose>
            </c:forEach>
            <c:if test="${invalidSelection}">
            <tr><td></td>
            <font color="red">
            Please select only valid Favorite Foods
            </font></tr>
            </c:if>
            <tr>
               <td>Favorite Foods:</td>
               <td>
                  <input type="checkbox" name="food" value="Pizza" ${pizzaSelected ? 'checked' : ''}>Pizza<br>
                  <input type="checkbox" name="food" value="Pasta" ${pizzaSelected ? 'checked' : ''}>Pasta<br>
                  <input type="checkbox" name="food" value="Chinese" ${pizzaSelected ? 'checked' : ''}>Chinese
               </td>
            </tr>
            <tr>
               <td colspan=2>
                  <input type="submit" value="Send Data">
               </td>
            </tr>
         </table>

          <c:if test="${param.submitted && not empty userName && not empty birthDate && not empty emailAddr }">
         You entered:<br>
         Name: <c:out value="${param.userName}" /><br>
         Birth Date: <c:out value="${param.birthDate}" /><br>
         Email Address: <c:out value="${param.emailAddr}" /><br>
         Gender: <c:out value="${param.gender}" /><br>
         Lucky Number: <c:out value="${param.luckyNumber}" /><br>
         Favorite Food:
         <c:forEach items="${paramValues.food}" var="current">
         <c:out value="${current}" />&nbsp;
         </c:forEach>
        </c:if> 
      </form>



   
   </body>
</html>