<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand fs-3" href="../index.jsp"><b><i>BookShopiee</i></b></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="../index.jsp">Home</a>
        
      </div>
    </div>
  </div>
</nav>
<div class="container mt-5 mb-3 col-md-6 col-lg-6" > 
	<h2 class="offset-4">Add Book</h2>
	<form action="addBook.jsp" method="post" class="mt-5">
	<br>		
		<div class="mb-3">
 				<label for="prn" class="form-label">Enter Book Title: </label>
 				<input type="text" class="form-control" id="prn" placeholder="enter title" name="title">
		</div>
		
		
		<div class="mb-3">
  				<label for="auth" class="form-label">Enter Book Author:  </label>
  				<input type="text" class="form-control" id="auth" placeholder="author..." name="author">
		</div>
		
		<div class="mb-3">
  				<label for="price" class="form-label">Enter Book Price:  </label>
  				<input type="text" class="form-control" id="price" placeholder="enter price.." name="price">
		</div>
		<div>
				<br>
				<input class="btn btn-outline-primary" type="submit"  value="SUBMIT" >
				
		</div>				
		</form>
 
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>