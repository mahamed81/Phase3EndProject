<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>User Registration</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>
	<h1 style="color:blue;">Registration</h1>
	
	
	<form method="post" modelAttribute="regis">

		<table>
			<tr>
				<td align="right">Name:</td>
				<td align="left"><input type="text" name="name" required /></td>
			</tr>
			<tr>
				<td align="right">Username:</td>
				<td align="left"><input type="text" name="username" required /></td>
			</tr>
			<tr>
				<td align="right">Password:</td>
				<td align="left"><input type="password" name="password" required /></td>
			</tr>
		</table>

		<button type="submit">Submit</button>

	</form>
	
	
</body>
</html>