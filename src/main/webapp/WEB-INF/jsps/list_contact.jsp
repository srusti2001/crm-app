<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leads</title>
</head>
<body>
	<h2>All list here</h2>
		<table style="border:1px white;">
		<tr >
		<th style="border:1px solid white;">First Name</th>
		<th style="border:1px solid white;">Last Name</th>
		<th style="border:1px solid white;">Email</th>
		<th style="border:1px solid white;">Mobile</th>
		<th style="border:1px solid white;">Source</th>
		
		
		</tr>
		<c:forEach var="contact" items="${contact}">
		<tr>
			<td style="border:1px solid white;"><a href="contactinfo?id=${contact.id}">${contact.firstName}</a></td>
			<td style="border:1px solid white;">${contact.lastName}</td>
			<td style="border:1px solid white;">${contact.email}</td>
			<td style="border:1px solid white;">${contact.mobile}</td>
			<td style="border:1px solid white;">${contact.source}</td>
			<th style="border:1px solid white;"><a href="generateBill?id=${contact.id}">Billing</a></th>
		</tr>
		</c:forEach>
		</table>
</body>
</html>