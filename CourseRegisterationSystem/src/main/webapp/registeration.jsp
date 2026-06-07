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
		<h2 class="text-center">Student Registeration </h2>
		<div id="formContainer ">
		<form action="studentRegisteration" method="post" onsubmit="return validate()" name="regForm">
			<div>
				<label class="form-label " for="name">Enter Name : </label>
				<br>
				<input class="form-control" type="text" name="txtName" id="name" required>
			</div>
			<div>
				<label class="form-label" for="prn">Enter PRN :  </label>
				<br>
				<input class="form-control" type="text" name="txtPrn" id="prn" required>
			</div>
			<div>
				<label class="form-label" for="pass">Enter Password : </label>
				<br>
				<input class="form-control" type="text" name="txtPass" id="pass" required>
			</div>
			<div>
				<label class="form-label" for="eml">Enter Email : </label>
				<br>
				<input class="form-control" type="text" name="txtEmail" id="eml" required>
			</div>
			<div>
				<label class="form-label">Select Gender:  </label>
			
					<div class="form-check">
 					 <input class="form-check-input" type="radio" name="txtGender" id="radioDefault1" value="Male" required>
 					 <label class="form-check-label" for="radioDefault1">Male</label>
					</div>
					<div class="form-check">
  					<input class="form-check-input" type="radio" name="txtGender" id="radioDefault2" value="Female">  
  					<label class="form-check-label" for="radioDefault2">Female</label>
  					</div>
			</div>
			
			
			
			<div>
			<br>
				<input class="btn btn-outline-primary" type="submit"  value="Register" >
				
			</div>
		</form>
		</div>
		</div>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
		
</body>
</html>