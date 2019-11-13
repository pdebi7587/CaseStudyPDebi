<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<jsp:include page="_menu.jsp"></jsp:include>
<br>

<form action= '<spring:url value="/loginAction" />'   method="post" align="center">
<h2 align="center">GOOD Db</h2>
		<table align="left">
			<tr>
				<td>Username</td>
				<td> <input type="text" name = "username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td> <input type="password" name = "password"></td>
			</tr>
			<tr>
				<td> <button type="submit">Login</button>   </td>
			</tr>
		</table>
		
		<h1 align = "center">List of Disney Channel Original Movies</h1>
	<jsp:include page="viewmov.jsp"></jsp:include> 
			
		

		
		
		
		

	</form>
</body>
</html>