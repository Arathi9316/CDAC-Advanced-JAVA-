package com.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.app.model.Student;
import com.app.model.Teacher;

public class TeacherDao {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver found");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","12369");
		System.out.println("Connection Established");
		return con;
	}
	public static int teacherRegistration(Teacher t) {
		int i=0;
		try {
			
			System.out.println("e = "+t);
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("insert into teacher(name,email,password)values(?,?,?)");
			pstmt.setString(1,t.getName());
			pstmt.setString(2,t.getEmail());
			pstmt.setString(3,t.getPassword());

			
			i=pstmt.executeUpdate();
			return i;
			
		}catch(Exception e1) {
			return i;
		}
	}
	public static int teacherLogin(String email,String pass) throws ClassNotFoundException, SQLException {
		int i=0;
		try {
		Connection con=getConnection();
		PreparedStatement pstmt=con.prepareStatement("Select * from teacher where email=? and password=?");
		pstmt.setString(1, email);
		pstmt.setString(2,pass);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()) {
			i=1;
		}
		return i;
		}catch(Exception e) {
			return 0;
		}
		
	}
}
