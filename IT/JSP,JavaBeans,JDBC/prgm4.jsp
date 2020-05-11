<%@ page language="java" contentType="text/html"%>
<%@ page import="javax.naming.*,java.sql.*,java.io.*,java.lang.*,java.text.*,java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Question 4 | Greeting</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
</head>
<body>
<div class="container">	
  <form>
  	<div class="form-group">
  		<div class="col-sm-offset-1 col-xs-4">
  			<label for="usr">Name:</label>
  			<input type="text" name="userName" class="form-control" required>
  		</div>	
  	</div>

  	  <div class="form-group">        
      <div class="col-sm-offset-1 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>

<c:set var="name" value="${param.userName}"/>
<%
Date date = new Date();
int hours = date.getHours();
 
String name = (String)pageContext.getAttribute("name"); 
if(name!=null && name!=""){
if(hours>=0 && hours<=12){
  out.print("Good Morning  ");
  out.print(name);
}

else if(hours>=12 && hours<=16){
  out.print("Good Afternoon  ");
  out.print(name);
}

else if(hours>=16 && hours<=21){
  out.print("Good Evening  ");
  out.print(name);
}

else if(hours>=21 && hours<=24){
  out.print("Good Night  ");
  out.print(name);
}

}

%>
</body>
</html>