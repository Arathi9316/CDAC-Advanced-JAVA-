<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Registeration</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
	
	<link rel="stylesheet" href="resources/css/style.css">
	

</head>
<body>
	<nav class="navbar navbar-expand-lg nav">
		<div class="container-fluid">
			<a class="navbar-brand fs-3" href="index.jsp"><b><i>Course</i></b></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link active" aria-current="page" href="index.jsp">Home</a>

				</div>
			</div>
		</div>
	</nav>

	<div class="container text-center home borders">
		<h1 class="mt-3 mb-2"><i>Course Registeration System</i></h1>

		<div class="row mt-3 borders">
			<div class=" col col-lg-3 bg-secondary borders">
				<form method="post">
					<div class="d-grid gap-2  mb-3 first">
						<button class="btn btn-warning text-primary-emphasis

						" type="submit" name="show"
							value="register">Student Registeration</button>
						<button class="btn btn-info " type="submit" name="show"
							value="login">Student Login</button>
						<button class="btn btn-warning text-primary-emphasis" type="submit" name="show"
							value="course">Course Selection</button>
						<button class="btn btn-info" type="submit" name="show"
							value="view">Edit Student details</button>
					</div>
				</form>
			</div>
			<div class="col col-lg-9 bg-warning home borders ">
				<%
				String show = request.getParameter("show");
				String take=(String)request.getAttribute("shows");
				System.out.println(take);
				if ("register".equals(show)) {
				%>
				<jsp:include page="registeration.jsp"></jsp:include>
				<%
				} else if ("login".equals(show)||"login".equals(take)) {
				%>
				<jsp:include page="login.jsp"></jsp:include>
				<%
				} else if ("course".equals(show)) {
				%>
				<jsp:include page="course.jsp"></jsp:include>
				<%
				} else if ("view".equals(show)||"view".equals(take)) {
				%>
				<jsp:include page="viewAll.jsp"></jsp:include>
				<%
				} else if ("show".equals(show)) {
				%>
				<jsp:include page="viewStudent.jsp"></jsp:include>
				<%
				} else {
				%>
				<jsp:include page="homepage.jsp"></jsp:include>
				<%
				}
				%>
			</div>
		</div>

	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>
</body>
</html>