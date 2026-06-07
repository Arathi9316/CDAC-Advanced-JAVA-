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
 * Servlet implementation class UpdatedMarks
 */
@WebServlet("/updateMarks")
public class UpdatedMarks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatedMarks() {
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
		String prn=request.getParameter("prn");
		String sub1=request.getParameter("sub1");
		String sub2=request.getParameter("sub2");
		String sub3=request.getParameter("sub3");
		String sub4=request.getParameter("sub4");
		String sub5=request.getParameter("sub5");
		float total=Integer.parseInt(sub1)+Integer.parseInt(sub2)+
				Integer.parseInt(sub3)+Integer.parseInt(sub4)+Integer.parseInt(sub5);
		float percent=total/5;
		
		
		
//		System.out.println(prn+" "+sub1+" "+sub2+" "+sub3+" "+sub4+" "+sub5);
		try {
			int status=StudentDao.setMarks(prn,sub1,sub2,sub3,sub4,sub5,total,percent);
			if(status==1) {
//				response.sendRedirect("index.html");
//				response.sendRedirect("setStudentMarks.html");
				request.getRequestDispatcher("setStudentMarks.html").include(request, response);
				pw.write("<center><h5 class='text-success'>Marks Updated Successfully!!!!</h5></center>");
			}
			else {
				request.getRequestDispatcher("setStudentMarks.html").include(request, response);
				pw.write("<center><h5 class='text-success'>Marks not inserted!!</h5></center>");
			}
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
