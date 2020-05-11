<%@ page contentType="text/html" language="java" import="java.util.*,java.io.*,java.lang.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<title>Question 10 | USER</title>
	<style type="text/css">
		span{
			font-size: 50px;
		}
		img{
          display: inline;
          float: left;
          margin-left: 20px;

		}
		#id1{
			width: 30%;
			height: 35%;
			margin-top: 10px;
		}

		#id2{
			width: 20%;
			height: 20%;
		}

		#id3{
			margin-top: -20px;
			width: 20%;
			height: 25%;
		}

		#id4{
			margin-top: -10px;
			width: 20%;
			height: 15%;
		}

		img:hover{
          transform: scale(1.1);
		}
	</style>

	<script type="text/javascript">
		function fun(id){
			if(document.getElementById("order").value.indexOf(document.getElementById(id).title) == -1)
			document.getElementById("order").value+=document.getElementById(id).title+" ";
		    else
		    	alert("Already Ordered Once");
}

function confirm(){
	window.location.href =window.location.href.replace('value=', 'value='+document.getElementById("order").value);; 
}

	</script>

</head>
<body>
	<c:if test="${empty param.name || empty param.age}">
	 <c:redirect url="/prgm10.html"/>
    </c:if>
<center>

	<c:set var="name" scope="session" value="${param.name}"/>


<h1><font color="green">Hello</font></h1>
<span>< <c:out value="${param.name}"/> ></span>

<h1><font color="green">Choose Product to Place Order</font></h1>
<br><br>
<img src="images\car.png" id="id1" title="Car" onclick="fun(this.id)">
<img src="images/bike.png" id="id2" title="Bike" onclick="fun(this.id)">
<img src="images/laptop.png" id="id3" title="Laptop" onclick="fun(this.id)">
<img src="images/phone.png" id="id4" title="Phone" onclick="fun(this.id)">




    <textarea  name="order" id="order"  hidden="hidden"></textarea>




</center>

<c:set var="order1" value="${param['value']}" scope="session"/>
<!--<c:out value="${param['value']}"/>-->
<!--<button onclick="sub()">Order</button>-->
<button onclick="confirm()">Confirm</button>
<form action="prgm10proc.jsp">
	<input type="submit" name="submit" value="Order" >
	
</form>

</body>
</html>