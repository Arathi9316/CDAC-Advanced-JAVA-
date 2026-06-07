<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.dao.StudentDao,com.app.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Registeration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
	<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
<%
	String prn=(String)request.getParameter("id");
	Student s=StudentDao.getAllDetails(prn);
	pageContext.setAttribute("s", s);
	
%>

<div class="container mt-3 mb-3 text-start col-lg-6" >
		<h2 class="text-center">Edit page </h2>
	<form action="updateStudent.jsp" method="post">
			<div>
				<label class="form-label " for="name" >Enter Name : </label>
				<br>
				<input class="form-control" type="text" name="name" id="name" required value="<%=s.getName()%>">
			</div>
			<div>
				<label class="form-label" for="prn">Enter PRN :  </label>
				<br>
				<input class="form-control" type="text" name="prn" id="prn" required value="<%=s.getPrn()%>">
			</div>
			<div>
				<label class="form-label" for="pass">Enter Password : </label>
				<br>
				<input class="form-control" type="password" name="password" id="pass" required value="<%=s.getPassword()%>">
			</div>
			<div>
				<label class="form-label" for="eml">Enter Email : </label>
				<br>
				<input class="form-control" type="email" name="email" id="eml" required value="<%=s.getEmail()%>">
			</div>
			
			<div>
				<label class="form-label">Select Gender:  </label>
				
				<%if(s.getGender().equals("Male"))
				{
					%>
			
					<div class="form-check">
 					 <input class="form-check-input" type="radio" name="gender" id="radioDefault1" value="Male"  checked="checked">
 					 <label class="form-check-label" for="radioDefault1">Male</label>
					</div>
					<div class="form-check">
  					<input class="form-check-input" type="radio" name="gender" id="radioDefault2" value="Female">  
  					<label class="form-check-label" for="radioDefault2">Female</label>
  					</div>
			</div>
			
			<%}else{ %>
			<div>
					<div class="form-check">
 					 <input class="form-check-input" type="radio" name="gender" id="radioDefault1" value="Male"  >
 					 <label class="form-check-label" for="radioDefault1">Male</label>
					</div>
					<div class="form-check">
  					<input class="form-check-input" type="radio" name="gender" id="radioDefault2" value="Female" checked="checked">  
  					<label class="form-check-label" for="radioDefault2">Female</label>
  					</div>
			</div>
			<%} %>
				<div>
				<label class="form-label" for="course">Enter Course : </label>
				<br>
				<input class="form-control" type="text" name="course" id="course" required value="<%= s.getCourse()%>">
			</div>
			
			<div>
			<br>
				<input class="btn btn-outline-primary" type="submit"  value="UPDATE" >
				</div>
				
		</form>
		
	</div>
					<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
	
</body>
</html>