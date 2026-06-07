`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.dao.StudentDao,com.app.model.Student,java.util.*"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c"%>
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
		<h2 class="text-center">Edit details </h2>
		
		
		
		
		<%
			List<Student> list = StudentDao.getAllStudents();
			pageContext.setAttribute("list", list);
			%>
<table class=" mt-5 table border rounded-2 table-bordered">
			<thead class="table-secondary">
			<tr>
				<th>PRN</th>
				<th>NAME</th>
				<th>PASSWORD</th>
				<th>EMAIL</th>
				<th>GENDER</th>
				<th>COURSE</th>
				<th colspan='2'>Operation</th>
				</tr>
			</thead>
			<tbody  class="table-group-divider">
			<c:forEach var="s" items="${list}"> 		
				<tr>
				<td>${s.prn}</td>
				<td>${s.name}</td>
				<td>${s.password}</td>
				<td>${s.email}</td>
				<td>${s.gender}</td>
				<td>${s.course}</td>
				<td><a href="edit.jsp?id=${s.prn}">Edit</a></td>
				<td><a href="delete.jsp?id=${s.prn}">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
			
			</table>
		
		</div>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
	
</body>
</html>