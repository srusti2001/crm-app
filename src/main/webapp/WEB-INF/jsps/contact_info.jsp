<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file="menu.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Information</title>
</head>
<body>
	<h2>Contact details</h2>
	<table>
		<tr>
			<th style="border:1px solid white;">First Name:</th><td style="border:1px solid white;">${contact.firstName}</td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Last Name:</th><td style="border:1px solid white;">${contact.lastName}</td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Email:</th><td style="border:1px solid white;">${contact.email}</td>
		</tr>
		<tr>
	        <th style="border:1px solid white;">Mobile:</th><td style="border:1px solid white;">${contact.mobile}</td>
	    </tr>
	    <tr>
			<th style="border:1px solid white;">Source:</th><td style="border:1px solid white;">${contact.source}</td>
		</tr>
	</table>
	
</body>
</html>