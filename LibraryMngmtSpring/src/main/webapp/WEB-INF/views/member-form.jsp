<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Form</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="../"><h4><i>Library Management</i></h4></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../member/showForm">Add Member</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../book/showForm">Add Book</a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>
	<div class="container mt-5">

		<div class="row justify-content-center">

			<div class="col-md-6">

				<div class="card shadow">

					<div class="card-header text-center">
						<h3>Member Form</h3>
					</div>

					<div class="card-body">

						<form:form action="saveMember"
							method="post"
							modelAttribute="member">

							<form:hidden path="id"/>

							<div class="mb-3">
								<label class="form-label">First Name</label>

								<form:input path="firstName"
									cssClass="form-control"
									placeholder="Enter First Name"/>
							</div>

							<div class="mb-3">
								<label class="form-label">Last Name</label>

								<form:input path="lastName"
									cssClass="form-control"
									placeholder="Enter Last Name"/>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label>

								<form:input path="email"
									type="email"
									cssClass="form-control"
									placeholder="Enter Email"/>
							</div>

							<div class="text-center">
								<button type="submit"
									class="btn btn-primary">
									Save Member
								</button>

								<a href="list"
									class="btn btn-secondary">
									Back
								</a>
							</div>

						</form:form>

					</div>

				</div>

			</div>

		</div>

	</div>

</body>
</html>