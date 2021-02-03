<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Employees</title>
</head>
<body>

	<h1 style="color: blue"></h1>

	<form:form action="delemp" method="post" modelAttribute="delete">
		<table>
			<tr>
				<th>Product Name</th>
				<td>${delete.id}
				<form:hidden path="id"/>
				</td>
				
			</tr>
			<tr>
				<th>Task Name</th>
				<td>${delete.taskName}
				<form:hidden path="taskName"/></td>
			</tr>
			<tr>
				<th>Start Date</th>
				<td>${delete.startDate}
				<form:hidden path="startDate"/></td>
			</tr>
			<tr>
				<th>End Date</th>
				<td>${delete.endDate}
				<form:hidden path="endDate"/></td>
			</tr>
			<tr>
				<th>Description</th>
				<td>${delete.descrip}
				<form:hidden path="descrip"/></td>
			</tr>
			<tr>
				<th>Email</th>
				<td>${delete.email}
				<form:hidden path="email"/></td>
			</tr>
			<tr>
				<th>Severity</th>
				<td>${delete.severity}
				<form:hidden path="severity"/></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Delete"></td>
			</tr>
		</table>

	</form:form>


</body>
</html>