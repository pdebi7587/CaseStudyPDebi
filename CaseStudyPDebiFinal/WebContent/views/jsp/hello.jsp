<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Home!</title>
</head>
<body>
<jsp:include page="_menu.jsp"></jsp:include>

<br>
Welcome ${user.name}!
<br>
Username: ${user.username}
<br>
Password: ${user.password}
<br>
This is an authenticated homepage!

<br>
<br>
<br>
	<form action = "allUsers" method="post">
		<input type= "submit" value= "List All Users" />
	</form>

	


</body>
</html>