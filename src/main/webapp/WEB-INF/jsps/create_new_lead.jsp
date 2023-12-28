<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Lead</title>
</head>
<body>
	<h2>Create new lead </h2>
	<form action="save" method="post">
	<table>
		<tr>
			<th style="border:1px solid white;">First Name</th>
			<td><input type="text" name="firstName"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Last Name</th>
			<td><input type="text" name="lastName"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Email</th>
			<td><input type="text" name="email"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">Mobile</th>
			<td><input type="text" name="mobile"/></td>
		</tr>
		<tr>
			<th style="border:1px solid white;">source:</th>
			<td><select name="source" >
			  <option value="radio">radio</option>
			  <option value="news paper">news paper</option>
			  <option value="trade show">trade show</option>
			  <option value="website">website</option>
			</select></td>
		</tr>	
	</table>
	 	<input type="submit" value="save"/>
	</form>
</body>
</html>