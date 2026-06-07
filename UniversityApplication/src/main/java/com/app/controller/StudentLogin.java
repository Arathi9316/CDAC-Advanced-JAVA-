package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import com.app.dao.StudentDao;

/**
 * Servlet implementation class StudentLogin
 */
@WebServlet("/loginStudentServlet")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLogin() {
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
		String uname=request.getParameter("txtPrn");
		String pass=request.getParameter("txtPass");
		try {
			if((uname.trim().length()==0)&&(pass.trim().length()==0)){
				throw new Exception();
			}
			
			int status=StudentDao.studentLogin(uname, pass);
			if(status==1) {
//				response.sendRedirect("home.html");
				HttpSession session=request.getSession();
				session.setAttribute("uname", uname);
				session.setAttribute("pass", pass);
				request.setAttribute("user", uname);
				request.getRequestDispatcher("getResult").forward(request, response);
			}
			else {
				request.getRequestDispatcher("login.html").include(request, response);
				pw.write("<center><h5 class='text-danger'>Incorrect PRN or Password</h5></center>");

			}
		}catch(Exception e) {
			request.getRequestDispatcher("login.html").include(request, response);
			pw.write("<center><h5 class='text-danger'>Enter Valid PRN or Password</h5></center>");

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
