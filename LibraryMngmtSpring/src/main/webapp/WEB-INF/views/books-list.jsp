<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book List</title>

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
          <a class="nav-link" href="showForm">Add Book</a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>

	<div class="container mt-5">

		<div class="d-flex justify-content-between mb-3">
			<h2>Library Books</h2>

			<a href="showForm" class="btn btn-success">
				Add New Book
			</a>
		</div>

		<table class="table table-bordered table-striped table-hover">

			<thead class="table-dark">
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Author</th>
					<th>Available Count</th>
					<th width="200">Actions</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach var="book" items="${bookList}">
					
					<c:url var="updateLink" value="/book/showFormForUpdate">
						<c:param name="bookId" value="${book.id}"></c:param>
					</c:url>
					<c:url var="deleteLink" value="/book/delete">
						<c:param name="bookId" value="${book.id}"> </c:param>
					</c:url>
					<tr>
						<td>${book.id}</td>
						<td>${book.title}</td>
						<td>${book.author}</td>
						<td>${book.count}</td>

						<td>

							<a href="${updateLink}"
								class="btn btn-outline-warning btn-sm me-3 ms-5">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
  <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325"/>
</svg>
							</a>

							<a href="${deleteLink}"
								class="btn btn-outline-danger btn-sm "
								onclick="return confirm('Are you sure you want to delete this book?');">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
  <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
</svg>
							</a>

						</td>
					</tr>

				</c:forEach>

			</tbody>

		</table>

	</div>

</body>
</html>