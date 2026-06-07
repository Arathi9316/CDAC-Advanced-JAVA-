<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issue Book</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<div class="container mt-5">

		<div class="row justify-content-center">

			<div class="col-md-6">

				<div class="card shadow">

					<div class="card-header bg-secondary text-white text-center">
						<h3>Issue Book</h3>
					</div>

					<div class="card-body">

						<form action="issueBook" method="post">

							<div class="mb-3">
								<label class="form-label">Select Member</label>

								<select name="memberId" class="form-select" required>

									<option value="">Choose Member</option>

									<c:forEach var="member" items="${members}">
										<option value="${member.id}">
											${member.firstName}
											${member.lastName}
										</option>
									</c:forEach>

								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Select Book</label>

								<select name="bookId" class="form-select" required>

									<option value="">Choose Book</option>

									<c:forEach var="book" items="${books}">
										<option value="${book.id}">
											${book.title}
											(${book.author})
										</option>
									</c:forEach>

								</select>
							</div>

							<div class="text-center">

								<button type="submit"
									class="btn btn-success">
									Issue Book
								</button>

								<a href="../"
									class="btn btn-secondary">
									Cancel
								</a>

							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

</body>
</html>