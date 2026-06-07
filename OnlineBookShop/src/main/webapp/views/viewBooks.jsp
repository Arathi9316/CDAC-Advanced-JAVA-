<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
    <%@ taglib uri="jakarta.tags.core"  prefix="c"%>
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
    <a class="navbar-brand fs-3" href="./index.jsp"><b><i>BookShopiee</i></b></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="./index.jsp">Home</a>
        
      </div>
    </div>
  </div>
</nav>
<div class="container mt-3 mb-3 text-start">
		<h2 class="text-center">Edit details </h2>

<table class=" mt-5 table border rounded-2 table-bordered text-center">
			<thead class="table-secondary">
			<tr>
				<th>ID</th>
				<th>TITLE</th>
				<th>AUTHOR</th>
				<th>PRICE</th>
				<th colspan='2'>OPTIONS</th>
				</tr>
			</thead>
			<tbody  class="table-group-divider">
			
			<c:choose>
			<c:when test="${sessionScope.list != null}">
			
		<c:forEach var="b" items="${sessionScope.list}">
				<tr>
				<td>${b.getId()}</td>
				<td>${b.getTitle()}</td>
				<td>${b.getAuthor()}</td>
				<td>${b.getPrice()}</td>
				<td><a class="btn btn-outline-primary" href="views/updateBook.jsp?id=${b.getId()}">Edit</a></td>
				<td><a class="btn btn-outline-danger" href="views/delete.jsp?id=${b.getId()}">Delete</a></td>
				</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
			<tr><td>No data found</td></tr>
			</c:otherwise>
			</c:choose>
			</tbody>
			
			</table>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>




</body>
</html>