<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Let's Music Store</a>
		<a class="navbar-brand" href="#">Home</a>
		<a class="navbar-brand" href="#">Products</a>
		<a class="navbar-brand" href="#">About</a>
		<a class="navbar-brand" href="login">Login</a>
		<a class="navbar-brand" href="#">Register</a>
	</nav>
	
	<div class="container">
	
	<h1>Customer Management Page</h1>
	<p>This is the customer management page!</p>
	
		<table class="table table-hover">
			<thead>
				<tr>
				
					<th scope="col">Name</th>	
					<th scope="col">Email</th>
					<th scope="col">Phone</th>
					<th scope="col">Username</th>
					<th scope="col">Password</th>
					<th scope="col">Enabled</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${result}" var="result">
					<tr>
						<td>${result.name}</td>
						<td>${result.email}</td>
						<td>${result.phone}</td>
						<td>${result.username}</td>
						<td>${result.password}</td>
						<td>true</td>
				</c:forEach>
			</tbody>
			
		</table>
		
			<a type="button" class="btn btn-danger" href="login">Logout</a>
	</div>

</body>
</html>