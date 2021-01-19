<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Employee</title>
</head>
<body>
	<h1>Login</h1>
	<font color="red">${errorMessage}</font>
	<form:form action ="login" modelAttribute="log">
		<form:label path="username">Username</form:label>
		<form:input path="username" type="text" required="required" />
		<br>
		<form:errors path="username" />



		<form:label path="password">Password</form:label>
		<form:input path="password" type="password" required="required" />
		<br>
		<form:errors path="password" required="required" />

		<button type="submit">Submit</button>

	</form:form>

</body>
</html>