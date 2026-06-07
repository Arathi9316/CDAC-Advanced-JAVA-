<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University</title>
</head>
<body>

	<%
		String prn=request.getParameter("prn");
		Boolean isDelete=StudentDao.deleteStudent(prn);
		System.out.println(isDelete);
		if(isDelete){
			request.getRequestDispatcher("ViewAllStudent.jsp").forward(request, response);
			//out.write("Student with prn:"+prn+" Successfully deleted");
		}
	%>
</body>
</html>