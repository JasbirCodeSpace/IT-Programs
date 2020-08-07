<%@ page contentType="text/html" language="java"%>
<%@ taglib prefix="t" uri="tlds/customTag.tld" %>


<!DOCTYPE html>
<html>
<head>
	<title>Quuestion 6 | Custom Tag</title>
</head>
<body>
<center>
<h1><font color="green">{ Hello Example }</font></h1>
	
<h1 title="name = Ajay"><t:hello name="Ajay"/></h1>
<br><br>

<h1><font color="green">{ Choco Example }</font></h1>
<h1 title="texture = Chewy"><t:choco texture="Chewy"/></h1>
<h1 title="texture = Crunchy"><t:choco texture="Crunchy"/></h1>
</center>
</body>
</html>
