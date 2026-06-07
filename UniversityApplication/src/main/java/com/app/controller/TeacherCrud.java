package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class TeacherCrud
 */
@WebServlet("/teacherCrud")
public class TeacherCrud extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherCrud() {
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
			String btn=request.getParameter("btn");
			
			if(btn.equals("addStudent")) {
				response.sendRedirect("registeration.html");

				
			}
			if(btn.equals("updateMarks")){
				response.sendRedirect("getStudentDetails.html");
//						pw.write("Successfully updated");
						
			}	
			if(btn.equals("deleteStudent")){
//				response.sendRedirect("deleteStudent.html");
				pw.write("Successfully deleted");

			}
			if(btn.equals("getAll")) {
				response.sendRedirect("ViewAllStudent.jsp");
//				pw.write("Successfully listed");

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
