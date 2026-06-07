<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.dao.StudentDao,com.app.model.Student,java.util.List"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
    <a class="navbar-brand fs-3" href="index.html"><b><i>XYZ</i></b></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link active" aria-current="page" href="index.html">Home</a>
					<a class="nav-link" href="login.html">Student</a> <a
						class="nav-link" href="tlogin.html">Teacher</a>
				</div>
			</div>
		</div>
	</nav>
	<div class="container mt-5 mb-3">
		<h2 class="offset-5 ">All Students List</h2>
	<%
	List<Student> list=StudentDao.getAllStudent();
	System.out.println(list);
	pageContext.setAttribute("list",list);
	%>
	
	
	<table class=" mt-5 table border rounded-2 table-bordered col-lg-8">
		<thead class="table-secondary">
   			<tr>
      			<th>PRN</th>
       			<th>Name</th>
       			<th>Email</th>
       			<th>Gender</th>
        		<th>SUB_1</th>
        		<th>SUB_2</th>
          		<th>SUB_3</th>
        		<th>SUB_4</th>
        		<th>SUB_5</th>        			
       			<th>TOTAL</th>
       			<th>PERCENTAGE</th>
       			<th >STATUS</th>
       			<th >Edit</th>
       			<th >Delete</th>
       			</tr>
    	</thead>
    	<tbody class="table-group-divider">
    		
    		<c:forEach var="s" items="${list}"> 
			<tr>
				<td>${s.prn}</td>
				<td>${s.name}</td>
				<td>${s.email}</td>
				<td>${s.gender}</td>
				<td>${s.sub1}</td>
				<td>${s.sub2}</td>
				<td>${s.sub3}</td>
				<td>${s.sub4}</td>
				<td>${s.sub5}</td>
				<td>${s.total}</td>
				<td>${s.percentage}</td>
				<td>${s.status}</td>
				<td>
				<input class="btn btn-outline-primary" type="button" value="Edit" onclick="location.href='edit.jsp?prn=${s.prn}'">
				</td><td><input class="btn btn-outline-primary" type="button" value="Delete" onclick="location.href='delete.jsp?prn=${s.prn}'">
				</td>
			</tr>
			</c:forEach>
    		
    	
    	</tbody>
	</table>
	</div>
	
	

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>
</body>
</html>