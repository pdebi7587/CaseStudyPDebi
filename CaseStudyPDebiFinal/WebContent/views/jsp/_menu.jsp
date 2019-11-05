<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div>
<a href="${pageContext.request.contextPath}">Home</a>
| &nbsp;
<a href="${pageContext.request.contextPath}/admin">Admin</a>
| &nbsp;
<a href="${pageContext.request.contextPath}/subscriber">Subscriber</a>
| &nbsp;
<a href="${pageContext.request.contextPath}/all">Audit</a>
| &nbsp;
<a href="${pageContext.request.contextPath}/contactus">Contact Us</a>

<c:if test="${pageContext.request.userPrincipal.name != null}">
| &nbsp;
<a href="${pageContext.request.contextPath}/logout">Logout</a>
</c:if>
</div>