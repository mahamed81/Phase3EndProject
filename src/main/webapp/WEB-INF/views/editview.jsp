<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Task</title>
</head>
<body>
	<h1 style="color: blue">Update Task</h1>

	<form:form method="post" modelAttribute="edit">
	
		<table>
			<tr>
				<td>ID</td>
				<td>${edit.id}<form:hidden path="id" />
				</td>
			</tr>
			<tr>
				<td>Task Name</td>
				<td><form:input path="taskName" name="taskName"  required="required"/></td>
			</tr>
			<tr>
				<td>Start Date</td>
				<td><form:input type="date" path="startDate" name="startDate"  required="required"/></td>
			</tr>
			<tr>
				<td>End Date</td>
				<td><form:input type="date" path="endDate" name="endDate"  required="required"/></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><form:textarea path="descrip" name="descrip"  required="required"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input type="email" path="email" name="eamil"  required="required"/></td>
			</tr>
			<tr>
				<td>Severity</td>
				<td><form:select path="severity" name="severity"  required="required">
						<option value="high">High</option>
						<option value="medium">Medium</option>
						<option value="low">Low</option>
					</form:select>
			</tr>
			<tr>
				<td><input type="submit" value="save"></td>
			</tr>
		</table>

	</form:form>


</body>
</html>