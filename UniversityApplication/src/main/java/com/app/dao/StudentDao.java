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
		System.out.println("Connection Established");
		return con;
	}
	public static int studentRegistration(Student s) {
		int i=0;
		try {
			
			System.out.println("e = "+s);
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("insert into student(prn,name,password,email,gender)values(?,?,?,?,?)");
			pstmt.setString(1,s.getPrn());
			pstmt.setString(2,s.getName());
			pstmt.setString(3,s.getPassword());
			pstmt.setString(4, s.getEmail());
			pstmt.setString(5, s.getGender());
			
			i=pstmt.executeUpdate();
			return i;
			
		}catch(Exception e1) {
			return i;
		}
	}
	public static int studentLogin(String prn,String pass) throws ClassNotFoundException, SQLException {
		int i=0;
		
		try {
		Connection con=getConnection();
		PreparedStatement pstmt=con.prepareStatement("Select * from student where prn=? and password=?");
		pstmt.setString(1, prn);
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
	public static int getStudent(String prn) {
		int i=0;
		try {
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("Select * from student where prn=?");
			pstmt.setString(1,prn);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				i=1;
			}
			return i;
		}catch(Exception e) {
			return i;
		}
	}
	public static int setMarks(String p,String s1,String s2,String s3,String s4,String s5,Float t,Float per) {
		String status;
		if(per<35) {
			status="Fail";
		}
		else {
			status="Pass";
		}
		int i=0;
		try {
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("Update student set sub1=?,sub2=?,sub3=?,sub4=?,sub5=?,total=?,percentage=?,status=? where prn=?");
			pstmt.setString(1,s1);
			pstmt.setString(2,s2);
			pstmt.setString(3,s3);
			pstmt.setString(4,s4);
			pstmt.setString(5,s5);
			pstmt.setFloat(6,t);
			pstmt.setFloat(7, per);
			pstmt.setString(8, status);
			pstmt.setString(9, p);
			i=pstmt.executeUpdate();
			return i;
			
			
		}catch(Exception e) {
			return i;
		}
	}
	public static Student getResult(String uname) {
			Student s=null;
		try {
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("Select * from student where prn=?");
			pstmt.setString(1, uname);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				s=new Student();
				s.setPrn(rs.getString("prn"));
				s.setName(rs.getString("name"));
				s.setSub1(rs.getString("sub1"));
				s.setSub2(rs.getString("sub2"));
				s.setSub3(rs.getString("sub3"));
				s.setSub4(rs.getString("sub4"));
				s.setSub5(rs.getString("sub5"));
				s.setTotal(rs.getFloat("total"));
				s.setStatus(rs.getString("status"));
				s.setPercentage(rs.getFloat("percentage"));
			}
			return s;
		}catch(Exception e){
			return s;
		}
	}
	
	
		public static List<Student> getAllStudent() throws SQLException, ClassNotFoundException{
			List<Student> list=new ArrayList<>();
			
			Connection con=getConnection();
			PreparedStatement pstmt=con.prepareStatement("Select * from student");
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				Student s1=new Student();
				s1.setPrn(rs.getString(1));
				s1.setName(rs.getString(2));
				s1.setEmail(rs.getString(4));
				s1.setGender(rs.getString(5));
				s1.setSub1(rs.getString(6));
				s1.setSub2(rs.getString(7));
				s1.setSub3(rs.getString(8));
				s1.setSub4(rs.getString(9));
				s1.setSub5(rs.getString(10));
				s1.setTotal(rs.getFloat(11));
				s1.setPercentage(rs.getFloat(12));
				s1.setStatus(rs.getString(13));
				list.add(s1);	
		}
			return list;
	}
		public static boolean deleteStudent(String prn) { 
		
			try {
				Connection con=getConnection();
				PreparedStatement pstmt=con.prepareStatement("Delete from student where prn=?");
				pstmt.setString(1, prn);
				int i= pstmt.executeUpdate();
				System.out.println("i="+i);
				return i>0;
			}
			catch(Exception e){
				return false;
			}
		}
}
