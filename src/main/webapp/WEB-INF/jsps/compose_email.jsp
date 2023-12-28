<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose</title>
</head>
<body>
	<form action="triggerEmail" method="post">
	<pre>
		To<input type="text" name="email" value="${email}"/>
		<textarea name="content" rows="10" cols="50">

		</textarea>
		<input type="submit" value="sendEmail"/>
 	</pre>
	</form>
	${msg}

</body>
</html>