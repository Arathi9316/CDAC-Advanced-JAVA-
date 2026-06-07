<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href=""><h4><i>Library Management</i></h4></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="member/showForm">Add Member</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="member/showForm">Add Book</a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>
	<div class="container mt-5">

		<div class="card shadow">

			

			<div class="card-body text-center">

				<p class="lead">
					Select an option below
				</p>

				<div class="d-flex justify-content-center gap-3">

					<a href="book/list" class="btn btn-outline-secondary btn-lg">
						Books
					</a>

					<a href="member/list" class="btn btn-outline-secondary btn-lg">
						Members
					</a>
					<a href="issue/showIssueForm" class="btn btn-outline-secondary btn-lg">
						Issue Book
					</a>

				</div>

			</div>

		</div>

	</div>
</body>
</html>