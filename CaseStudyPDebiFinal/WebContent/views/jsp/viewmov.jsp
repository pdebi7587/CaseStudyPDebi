<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movies List</title>
</head>
<body>
<table border="2" width="70%" cellpadding="2">    
<tr><th>Id</th><th>Title</th><th>Release Date</th><th>Imdb Rating</th></tr>    
   <c:forEach var="mov" items="${msg}">     
   <tr>    
   <td>${mov.movId}</td>    
   <td>${mov.movName}</td>    
   <td>${mov.reldate}</td>    
   </tr>    
   </c:forEach>    
   </table>    
   <br/>    
   <a href="/SpringMVCPaginationExample/viewemp/1">1</a>     
   <a href="/SpringMVCPaginationExample/viewemp/2">2</a>     
   <a href="/SpringMVCPaginationExample/viewemp/3">3</a>    
</body>
</html>