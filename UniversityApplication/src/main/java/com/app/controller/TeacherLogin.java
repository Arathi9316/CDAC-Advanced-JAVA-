package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.app.dao.TeacherDao;

/**
 * Servlet implementation class TeacherLogin
 */
@WebServlet("/loginTeacherServlet")
public class TeacherLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherLogin() {
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
		String email=request.getParameter("txtEmail");
		String pass=request.getParameter("txtPass");
		try {
			if((email.trim().length()==0)&&(pass.trim().length()==0)){
				throw new Exception();
			}
			
			int status=TeacherDao.teacherLogin(email, pass);
			if(status==1) {
//				response.sendRedirect("getStudentDetails.html");
				response.sendRedirect("TeacherCrud.html");
//				pw.write("Login successfully");
			}
			else {
				request.getRequestDispatcher("tlogin.html").include(request, response);
				pw.write("<center><h5 class='text-danger'>No user found!!</h5></center>");
			}
		}catch(Exception e) {
			request.getRequestDispatcher("tlogin.html").include(request, response);
			pw.write("<center><h5 class='text-danger'>Enter Valid User Email or Password</h5></center>");

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
