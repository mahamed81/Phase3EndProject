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
		<a class="navbar-brand" href="#">Task Manager</a>
	</nav>


	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
				
					<th scope="col">ID</th>	
					<th scope="col">Task Name</th>
					<th scope="col">Start Date</th>
					<th scope="col">End Date</th>
					<th scope="col">Description</th>
					<th scope="col">Email</th>
					<th scope="col">Severity</th>
					
					<th scope="col" colspan="2"><a type="button" class="btn btn-success" href="task">Add Task</a></th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${result}" var="result">
					<tr>
						<td>${result.id}</td>
						<td>${result.taskName}</td>
						<td>${result.startDate}</td>
						<td>${result.endDate}</td>
						<td>${result.descrip}</td>
						<td>${result.email}</td>
						<td>${result.severity}</td>
						<td><a type="button" class="btn btn-warning"
							href="/edit-task?id=${result.id}">Update</a></td>
						<td><a type="button" class="btn btn-danger"
							href="/dele-task?id=${result.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
		
				<a type="button" class="btn btn-danger" href="login">Logout</a>
	</div>

</body>
</html>