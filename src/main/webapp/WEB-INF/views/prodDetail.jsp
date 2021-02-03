<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<head>
<meta charset="ISO-8859-1">
<title>List of Employees</title>
</head>
<body>
	<div class="container">

	<h1 style="color: blue">Product Detail</h1>

	<form:form action="delemp" method="post" modelAttribute="prodDetail">
		<table>
			<img width = "100px" height="150px" alt="" src="https://i.redd.it/u296oianoh121.jpg">
			<tr>
				<th>Product Name</th>
				<td>${prodDetail.productName}
				<form:hidden path="productName"/>
				</td>
				
			</tr>
			<tr>
				<th>Category</th>
				<td>${prodDetail.category}
				<form:hidden path="category"/></td>
			</tr>
			<tr>
				<th>Condition</th>
				<td>${prodDetail.cond}
				<form:hidden path="cond"/></td>
			</tr>
			<tr>
				<th>Price</th>
				<td>${prodDetail.price}
				<form:hidden path="price"/></td>
			</tr>
			
			
		</table>
		<a type="button" class="btn btn" href="prod_list">Back</a>  <a type="button" class="btn btn-success" href="/add-prod?id=${prodDetail.id}">Add to Shipping Cart</a>

	</form:form>

</div>
</body>
</html>