<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file="menu.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Information</title>
</head>
<body>
	<h2>Lead details</h2>
	<table>
		<tr>
			<th style="border:1px solid white;">First Name:</th><td style="border:1px solid white;">${lead.firstName}</td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Last Name:</th><td style="border:1px solid white;">${lead.lastName}</td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Email:</th><td style="border:1px solid white;">${lead.email}</td>
		</tr>
		<tr>
	        <th style="border:1px solid white;">Mobile:</th><td style="border:1px solid white;">${lead.mobile}</td>
	    </tr>
	    <tr>
			<th style="border:1px solid white;">Source:</th><td style="border:1px solid white;">${lead.source}</td>
		</tr>
	</table>
	<form action="sendEmail" method="post">
		<input type="hidden" name="email" value="${lead.email}"/>
		<input type="submit" value="sendEmail"/>
	</form>
	<form action="convertLead" method="post">
		<input type="hidden" name="id" value="${lead.id}"/>
		<input type="submit" value="convert"/>
	</form>
	
</body>
</html>