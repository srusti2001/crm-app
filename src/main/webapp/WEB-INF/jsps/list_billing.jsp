<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
</head>
<body>
	<h2>Billing details here</h2>
		<table style="border:1px white;">
		<tr >
		<th style="border:1px solid white;">First Name</th>
		<th style="border:1px solid white;">Last Name</th>
		<th style="border:1px solid white;">Email</th>
		<th style="border:1px solid white;">Mobile</th>
		
		
		
		</tr>
		<c:forEach var="billing" items="${billing}">
		<tr>
			<td style="border:1px solid white;">${billing.firstName}</td>
			<td style="border:1px solid white;">${billing.lastName}</td>
			<td style="border:1px solid white;">${billing.email}</td>
			<td style="border:1px solid white;">${billing.mobile}</td>
			
	
		</tr>
		</c:forEach>
		</table>
</body>
</html>