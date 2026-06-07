<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-bordered">

	<tr>
		<th>Member Name</th>
		<th>Email</th>
		<th>Issued Books</th>
		<th>Available Copies
		</th>
	</tr>

	<c:forEach var="member" items="${members}">

		<tr>
			<td>
				${member.firstName} ${member.lastName}
			</td>

			<td>
				${member.email}
			</td>

			<td>

				<c:forEach var="book" items="${member.books}">

					${book.title} - ${book.author}
					<br>

				</c:forEach>

			</td>
			<td>
			<c:forEach var="book" items="${member.books}">

					${book.count}
					<br>

				</c:forEach>
			</td>

		</tr>

	</c:forEach>

</table>
</body>
</html>