<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.dao.BookDAO,com.app.entity.Book"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%int id=Integer.parseInt(request.getParameter("id")); 
		Book book=BookDAO.getBookById(id);
		if(book!=null){
			int i=BookDAO.deleteByID(id);
			if(i==1)
			response.sendRedirect("../viewBookServlet");
		}
		else{
			out.write("Book not found!!");
		}
	
	%>
</body>
</html>