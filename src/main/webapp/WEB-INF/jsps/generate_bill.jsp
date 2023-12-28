<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Bill</title>
</head>
<body>
	<h2>Create Bill </h2>
	<form action="saveBill" method="post">
	7<table>
		
		<tr>
			<th style="border:1px solid white;">First Name</th>
			<td><input type="text" name="firstName" value="${contact.firstName}"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Last Name</th>
			<td><input type="text" name="lastName" value="${contact.lastName}"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Email</th>
			<td><input type="text" name="email" value="${contact.email}"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Mobile</th>
			<td><input type="text" name="mobile" value="${contact.mobile}"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Product</th>
			<td><input type="text" name="product"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Amount</th>
			<td><input type="text" name="amount"/></td>
		</tr>
	</table>
	 	<input type="submit" value="generate Bill"/>
	</form>
</body>
</html>