<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SUDO Page</title>
</head>
<body>
<jsp:include page="_menu.jsp"></jsp:include>
<br>
<sec:authorize access="hasRole('ADMIN')">
Only ADMIN Can See!
</sec:authorize>
<br>
<br>
<sec:authorize access="hasRole('USER')">
Only USER Can See!
</sec:authorize>
<br>
<br>
<sec:authorize access="hasAnyRole('USER', 'ADMIN')">
Either ROLE Can See!
</sec:authorize>
<br>
<br>
Everyone Can See!
</body>
</html>