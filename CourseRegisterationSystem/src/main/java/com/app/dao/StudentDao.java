package com.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.app.model.Student;

public class StudentDao {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver found");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","12369");
		System.out.println("Connection established");
		return con;
	}
	
	public static int studentRegisteration(Student s) throws SQLException, ClassNotFoundException {
		int i=0;
		try {
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into course(prn,name,password,email,gender) values(?,?,?,?,?)");
			pstmt.setString(1,s.getPrn());
			pstmt.setString(2, s.getName());
			pstmt.setString(3, s.getPassword());
			pstmt.setString(4, s.getEmail());
			pstmt.setString(5, s.getGender());
			 i=pstmt.executeUpdate();
			return i;
		}catch(Exception e) {
			return i;
		}
	}
	public static Student getAllDetails(String prn) {
		Student s=null;
		try {
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("Select * from course where prn=?");
			pstmt.setString(1, prn);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
			s=new Student();
			s.setPrn(rs.getString("prn"));
			s.setName(rs.getString("name"));
			s.setPassword(rs.getString("password"));
			s.setEmail(rs.getString("email"));
			s.setGender(rs.getString("gender"));
			s.setCourse(rs.getString("course"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s;
	}
	
	public static int updateCourse(String prn,String course) {
		System.out.println(prn);
		int i=0;
		try {
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("Update course set course=? where prn=?");
			pstmt.setString(1, course);
			pstmt.setString(2, prn);
			i=pstmt.executeUpdate();
			return i;
		}catch(Exception e) {
			e.printStackTrace();
			return i;
		}
	}
	public static List<Student> getAllStudents() throws ClassNotFoundException, SQLException
	{
		List<Student> l = new ArrayList<Student>();
		Connection con = getConnection();
		PreparedStatement pstmt = con.prepareStatement("select * from course");
	 ResultSet rs=pstmt.executeQuery();
	 while(rs.next())
	 {
		 Student s = new Student();
			s.setPrn(rs.getString("prn"));
			s.setName(rs.getString("name"));
			s.setPassword(rs.getString("password"));
			s.setEmail(rs.getString("email"));
			s.setGender(rs.getString("gender"));
			s.setCourse(rs.getString("course"));
		 l.add(s);
	 }
	 return l;
	}
	
	public static boolean update(Student s) throws ClassNotFoundException, SQLException {
	
		Connection con=getConnection();
		PreparedStatement pstmt=con.prepareStatement("Update course set name=?,password=?,email=?,gender=?,course=? where prn=?");
		pstmt.setString(1, s.getName());
		pstmt.setString(2, s.getPassword());
		pstmt.setString(3, s.getEmail());
		pstmt.setString(4, s.getGender());
		pstmt.setString(5, s.getCourse());
		pstmt.setString(6, s.getPrn());
		int i=pstmt.executeUpdate();
		
		if(i==1) {
			return true;
		}
		else 
			return false;	
	}
	public static boolean deleteById(String prn) throws ClassNotFoundException, SQLException {
		System.out.println(prn);
		Connection con=getConnection();
		PreparedStatement pstmt=con.prepareStatement("Delete from course where prn=?");
		pstmt.setString(1, prn);
		int i=pstmt.executeUpdate();
		System.out.println(i);

		
		if(i==1) {
			return true;
		}
		else 
			return false;	
	}
	
}
