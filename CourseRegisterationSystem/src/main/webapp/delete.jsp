<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Registeration</title>
</head>
<body>
		<%
		String prn=(String)request.getParameter("id");
		Boolean isDelete=StudentDao.deleteById(prn);
		if(isDelete){
			response.sendRedirect("index.jsp");
		}
		%>
			
</body>
</html>