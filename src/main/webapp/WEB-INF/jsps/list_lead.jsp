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
	 <a href="viewCreateLeadPage">New Lead</a>
	<h2>All list here</h2>
		<table style="border:1px white;">
		<tr >
		<th style="border:1px solid white;">First Name</th>
		<th style="border:1px solid white;">Last Name</th>
		<th style="border:1px solid white;">Email</th>
		<th style="border:1px solid white;">Mobile</th>
		<th style="border:1px solid white;">Source</th>
		
		</tr>
		<c:forEach var="lead" items="${lead}">
		<tr>
			<td style="border:1px solid white;"><a href="leadinfo?id=${lead.id}">${lead.firstName}</a></td>
			<td style="border:1px solid white;">${lead.lastName}</td>
			<td style="border:1px solid white;">${lead.email}</td>
			<td style="border:1px solid white;">${lead.mobile}</td>
			<td style="border:1px solid white;">${lead.source}</td>
		</tr>
		</c:forEach>
		</table>
</body>
</html>