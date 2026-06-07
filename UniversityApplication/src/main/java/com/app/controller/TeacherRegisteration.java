package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.app.dao.TeacherDao;
import com.app.model.Teacher;

/**
 * Servlet implementation class TeacherRegisteration
 */
@WebServlet("/teacherRegisteration")
public class TeacherRegisteration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherRegisteration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter(); 
		String name=request.getParameter("txtName");
		String email=request.getParameter("txtEmail");
		String pass=request.getParameter("txtPass");
		Teacher t=new Teacher();
		t.setName(name);
		t.setEmail(email);
		t.setPassword(pass);

		try {
			int status=TeacherDao.teacherRegistration(t);
			if(status==1) {
//				response.sendRedirect("index.html");
				response.sendRedirect("tlogin.html");
			}
			pw.close();
		}catch(Exception e1) {
			e1.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
