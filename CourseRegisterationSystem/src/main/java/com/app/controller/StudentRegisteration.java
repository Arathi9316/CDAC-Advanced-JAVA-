package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.app.dao.StudentDao;
import com.app.model.Student;

/**
 * Servlet implementation class StudentRegisteration
 */
@WebServlet("/studentRegisteration")
public class StudentRegisteration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegisteration() {
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
				String prn=request.getParameter("txtPrn");
				String pass=request.getParameter("txtPass");
				String email=request.getParameter("txtEmail");
				String gender=request.getParameter("txtGender");
				Student s=new Student();
				s.setName(name);
				s.setPrn(prn);
				s.setPassword(pass);
				s.setGender(gender);
				s.setEmail(email);
				try {
					int status=StudentDao.studentRegisteration(s);
					System.out.println(status);
					if(status==1) {
//						response.sendRedirect("login.html");
						request.setAttribute("shows", "login");
						request.getRequestDispatcher("index.jsp").forward(request, response);
						pw.write("<center><h5 class='text-success'>Registeration Successfull!!</h5></center>");
						
					}
					else {
						request.getRequestDispatcher("index.jsp").include(request, response);
						
					}
					pw.close();
				}catch(Exception e1) {
					e1.printStackTrace();
					request.getRequestDispatcher("registeration.jsp").include(request, response);
					pw.write("<center><h5 class='text-danger'>Found Exception</h5></center>");
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
