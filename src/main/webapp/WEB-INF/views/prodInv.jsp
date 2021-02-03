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
	
		<h1>Product Inventory Page</h1>
		<p>This is the product inventory page</p>
		<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for product" title="Type in a name">
		<table class="table table-hover">
			<thead>
				<tr>
				
					<th scope="col">Photo Thumb</th>	
					<th scope="col">Product Name</th>
					<th scope="col">Category</th>
					<th scope="col">Condition</th>
					<th scope="col">Price</th>
					<th scope="col"></th>
					<th scope="col"></th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${result}" var="result">
					<tr>
						<td><a href="/prod-detail?id=${result.id}" > <img width = "100px" height="150px" alt="" src="https://i.redd.it/u296oianoh121.jpg"> </a></td>
						<td>${result.productName}</td>
						<td>${result.category}</td>
						<td>${result.cond}</td>
						<td>${result.price}</td>
						<td>
						<a type= "button" class="btn btn-danger" href="/dele?id=${result.id}">Delete</a>
						</td>
						<td><a type= "button" class="btn btn-warning"  href="/dele?id=${result.id}">Update</a></td>
						
				</c:forEach>
				
			</tbody>
			
		</table>
		<a type="button" class="btn btn" href="login">Logout</a>
			<a type="button" class="btn btn-success" href="add_prod-admin">Add Product</a>
	</div>
	
	<script>
	function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

</body>
</html>