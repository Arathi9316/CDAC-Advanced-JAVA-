<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

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
	<div class="container mt-5 mb-3 col-md-6 col-lg-6">
		<h2 class="offset-5">Result</h2>
	<%
		Student s =(Student)request.getAttribute("student");

		if(s != null){	%>


		<table class=" mt-5 table border rounded-2 table-bordered">
		<thead class="table-secondary">
   			<tr>
      			<th>PRN</th>
       			<th>Name</th>
        		<th>SUB_1</th>
        		<th>SUB_2</th>
          		<th>SUB_3</th>
        		<th>SUB_4</th>
        		<th>SUB_5</th>        			
       			<th>TOTAL</th>
       			<th>PERCENTAGE</th>
       			<th class="text-danger">STATUS</th>
    		</tr>
    	</thead>
		<tbody  class="table-group-divider">
   			<tr>
      			<td><%= s.getPrn() %></td>
      			<td><%= s.getName() %></td>
        		<td> <%= s.getSub1() %></td>
        		<td><%= s.getSub2() %></td>
        		<td><%= s.getSub3() %></td>
        		<td><%= s.getSub4() %></td>
        		<td><%= s.getSub5() %></td>
        		<td><%= s.getTotal() %></td>
        		<td><%= s.getPercentage() %></td>
        		<td><%= s.getStatus()%></td>
    			</tr>
    	</tbody>
		</table>

		<%
		}else{
		%>

		<h2 align="center" style="color:red;">
   		 <%= request.getAttribute("msg") %>
		</h2>

		<%
		}
	%>
	<input class="btn btn-outline-primary" type="button" value="Logout" onclick="location.href='logoutStudent'">

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>

</body>
</html>