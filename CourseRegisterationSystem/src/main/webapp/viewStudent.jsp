<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.model.Student,com.app.dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Registeration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
<nav class="navbar navbar-expand-lg nav"  >
  <div class="container-fluid">
    <a class="navbar-brand fs-3" href="index.jsp"><b><i>Course</i></b></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
       
      </div>
    </div>
  </div>
</nav>

<%!	String show ="show";
 %>
<%
	String prn1 = request.getParameter("txtPrn");
	Student student=StudentDao.getAllDetails(prn1);
	pageContext.setAttribute("s", student);
	System.out.println(student);

	
	
%>
<div class="container mt-3 mb-3 text-start">
		<h2 class="text-center">Details </h2>
			
			<table class=" mt-5 table border rounded-2 table-bordered">
			<thead class="table-secondary">
			<tr>
				<th>PRN</th>
				<th>NAME</th>
				<th>PASSWORD</th>
				<th>EMAIL</th>
				<th>GENDER</th>
				<th>COURSE</th>
				</tr>
			</thead>
			<tbody  class="table-group-divider">
			<%
					if(student==null){		
			%>
				<tr ><td colspan="6" class="text-danger text-center">No Data Found</td></tr>
			
			<%
					}else{
			%>			
				<tr>
				<td>${s.prn}</td>
				<td>${s.name}</td>
				<td>${s.password}</td>
				<td>${s.email}</td>
				<td>${s.gender}</td>
				<td>${s.course}</td>
				
				</tr>
				<%} %>
			</tbody>
			
			</table>
	
		<br>
		<input class="btn btn-warning" type="button" onclick="location.href='index.jsp'" value="Logout">
				
				
		
		</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>

</body>
</html>