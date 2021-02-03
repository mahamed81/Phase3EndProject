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
		<table class="table table-hover">
			<thead>
				<tr>
				
					<th scope="col">Photo Thumb</th>	
					<th scope="col">Product Name</th>
					<th scope="col">Category</th>
					<th scope="col">Condition</th>
					<th scope="col">Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${result}" var="result">
					<tr>
						<td>
						<a type= "button" href="/prod-detail?id=${result.id}">Hello Word</a>
						</td>
						
						
					
						<td>${result.productName}</td>
						<td>${result.category}</td>
						<td>${result.cond}</td>
						<td>${result.price}</td>
				</c:forEach>
			</tbody>
			
		</table>
		
			<a type="button" class="btn btn-danger" href="login">Logout</a>
	</div>

</body>
</html>