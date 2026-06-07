<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Registeratoin</title>

</head>
<body>
	<jsp:useBean id="s" class="com.app.model.Student"></jsp:useBean>
	<jsp:setProperty property="*" name="s"/>
	<%
	boolean ans=StudentDao.update(s);
	System.out.println(ans);
	if(ans){
		response.sendRedirect("index.jsp");
	}
	%>
	
</body>
</html>