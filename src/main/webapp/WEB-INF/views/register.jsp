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
			<h2>Basic Information</h2>
			<tr>
				<td align="right">Name:</td>
				<td align="left"><input type="text" name="name" required /></td>
			</tr>
			<tr>
				<td align="right">Email:</td>
				<td align="left"><input type="text" name="email" required /></td>
			</tr>
			
			<tr>
				<td align="right">Phone:</td>
				<td align="left"><input type="number" name="phone" required /></td>
			</tr>
			
			<tr>
				<td align="right">Username:</td>
				<td align="left"><input type="text" name="username" required /></td>
			</tr>
			<tr>
				<td align="right">Password:</td>
				<td align="left"><input type="password" name="password" required /></td>
			</tr>
			
			<td><h2>Billing Address</h2></td>
			
			<tr>
				<td align="right">Street Name:</td>
				<td align="left"><input type="text" name="streetName" required /></td>
			</tr>
			<tr>
				<td align="right">Apartment Number:</td>
				<td align="left"><input type="text" name="unit" required /></td>
			</tr>
			<tr>
				<td align="right">City:</td>
				<td align="left"><input type="text" name="city" required /></td>
			</tr>
			<tr>
				<td align="right">State:</td>
				<td align="left"><input type="text" name="state" required /></td>
			</tr>
			<tr>
				<td align="right">Country:</td>
				<td align="left"><input type="text" name="country" required /></td>
			</tr>
			<tr>
				<td align="right">Zipcode:</td>
				<td align="left"><input type="number" name="zipcode" required /></td>
			</tr> 
			
		</table>
		
	
		<button type="submit">Submit</button>

	</form>
	
	
</body>
</html>