<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Registeration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

	<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
<div class="container mt-3 mb-3 text-start">
		<h2 class="text-center">Login </h2>
		<form action="viewStudent.jsp" method="post" class="mt-5">
	<br>		
		<div class="mb-3">
 				<label for="prn" class="form-label">Enter PRN number </label>
 				<input type="text" class="form-control" id="prn" placeholder="10 digit prn" name="txtPrn">
		</div>
		
		<div class="mb-3">
  				<label for="pass" class="form-label">Enter password </label>
  				<input type="password" class="form-control" id="pass" placeholder="your password" name="txtPass">
		</div>
		<div>
				<br>
				<input class="btn btn-outline-primary" type="submit"  value="Login" >
				
		</div>
				
				
		</form>
		</div>
						<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
		
</body>
</html>