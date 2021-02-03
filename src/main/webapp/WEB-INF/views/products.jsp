<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>User Registration</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>
	<h1 style="color: blue;">Add Task</h1>
	


		<form:form method="post" modelAttribute="task">

			<form:label path="taskName">Task Name</form:label>
			<form:input path="taskName" type="text" required="required" />
			<br>
			<form:errors path="taskName" />

			<form:label path="startDate">Start Date</form:label>
			<form:input path="startDate" type="date" required="required" />
			<br>
			<form:errors path="startDate" />

			<form:label path="endDate">End Date</form:label>
			<form:input path="endDate" type="date" required="required" />
			<br>
			<form:errors path="endDate" required="required" />

			<form:label path="descrip">Description</form:label>
			<form:textarea path="descrip" required="required" />
			<br>
			<form:errors path="descrip" required="required" />

			<form:label path="email">Email</form:label>
			<form:input path="email" type="email" required="required" />
			<br>
			<br>
			<form:errors path="email" required="required" />

			<form:label path="severity">Severity</form:label>
			<form:select path="severity">
				<option value="high">High</option>
				<option value="medium">Medium</option>
				<option value="low">Low</option>
			</form:select>
			<br>
			<form:errors path="severity" required="required" />

			<button type="submit">Submit</button>
		</form:form>

 

	<%-- <form:form method="post" modelAttribute="task">

		<table>
			<tr>
				<td align="right">Task Name:</td>
				<td align="left"><input type="text" path="taskName" required /></td>
			</tr>
			<tr>
				<td align="right">Start Date:</td>
				<td align="left"><input type="date" path="startDate" required /></td>
			</tr>
			<tr>
				<td align="right">End Date:</td>
				<td align="left"><input type="date" path="endDate" required /></td>
			</tr>
			<tr>
				<td align="right">Description:</td>
				<td align="left"><textarea rows="" cols="" path="descrip"
						required></textarea></td>
			</tr>
			<tr>
				<td align="right">Email:</td>
				<td align="left"><input type="email" path="email" required /></td>
			</tr>

			<tr>
				<td align="right">Severity:</td>
				<td align="left"><select path=severity>
						<option value="high">High</option>
						<option value="medium">Medium</option>
						<option value="low">low</option>

				</select></td>
			</tr>

		</table>

		<button type="submit">Save</button>
		</form:form> --%>

	
</body>
</html>