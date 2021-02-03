<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>User Registration</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>
	<h1 style="color: blue;">Add Product</h1>
	


		<form:form method="post" modelAttribute="prod">
			
			<form:label path="productName">Product Name</form:label>
			<form:input path="productName" type="text" required="required" />
			<br>
			<form:errors path="productName" />

			<form:label path="category">Category</form:label>
			<form:input path="category" type="text" required="required" />
			<br>
			<form:errors path="category" />

			<form:label path="cond">Condition</form:label>
			<form:input path="cond" type="text" required="required" />
			<br>
			<form:errors path="cond" required="required" />

			<form:label path="price">Price</form:label>
			<form:input path="price" type="number" required="required" />
			<br>
			<form:errors path="price" required="required" />

			<button type="submit">Submit</button>
		</form:form>

 	<script>
 		$(function () {
    $(":file").change(function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
        }
    });
});

function imageIsLoaded(e) {
    $('#myImg').attr('src', e.target.result);
};
 	
 	</script>
	
</body>
</html>