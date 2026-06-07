package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.app.dao.StudentDao;

/**
 * Servlet implementation class getStudent
 */
@WebServlet("/getStudent")
public class getStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getStudent() {
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
		String prn=request.getParameter("txtPrn");
		int status=StudentDao.getStudent(prn);
		if(status==1) {
			response.sendRedirect("setStudentMarks.html");
			System.out.println("found");
		}
		else {
//			response.sendRedirect("getStudentDetails.html");
			request.getRequestDispatcher("getStudentDetails.html").include(request, response);
			pw.write("<center><h5 class='text-danger'>Student not found!!</h5><h5 class='text-danger'>Enter PRN Again</h5></center>");
			
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
