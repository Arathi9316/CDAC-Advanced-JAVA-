<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Registeration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
<%!int status; %>
		
		<%
			String prn=request.getParameter("txtPrn");
 			String course=request.getParameter("course");
			status=StudentDao.updateCourse(prn, course);
			System.out.println(prn+"  "+course);
			if(status!=0){
				System.out.println("Updated");
				out.write("Updated");
				request.setAttribute("shows", "view");
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
				
				
			}
			else{
				System.out.println("Not Update");
			
				
			}
 			
 			%>
<div class="container mt-3 mb-3 text-start">
		<h2 class="text-center">Course Selection </h2>
		<form action="course.jsp" method="post" class="mt-5">
	<br>		
		<div class="mb-3">
 				<label for="prn" class="form-label">Enter PRN number </label>
 				<input type="text" class="form-control" id="prn" placeholder="10 digit prn" name="txtPrn">
		</div>
		
		<div>
		<select class="form-select form-select-lg mb-3" name=course >
  				<option selected>Select course</option>
  				<option value="Java Developer">Java Developer</option>
  				<option value="Mern Developer">Mern Developer</option>
  				<option value="PGCP-AC">PGCP-AC</option>
				<option value="PGCP-AI">PGCP-AI</option>
  			
		</select>
		</div>
		<div>
				<br>
				<input class="btn btn-outline-primary" type="submit"  value="Update" >
				
		</div>
				
				
		</form>
		
		</div>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>	
</body>
</html>