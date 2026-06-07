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
 * Servlet implementation class GetResult
 */
@WebServlet("/getResult")
public class GetResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetResult() {
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
		String user=(String) request.getAttribute("user");
		try {
			
			Student s=StudentDao.getResult(user);
			 request.setAttribute("student", s);
		        request.getRequestDispatcher("getRes.jsp").forward(request, response);
			
			
		}catch(Exception e) {
			request.getRequestDispatcher("getRes.jsp").include(request, response);
			pw.write("<center><h2 class='text-danger'>Result not found!</h2></center>");


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
