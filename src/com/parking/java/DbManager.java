package com.parking.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DbManager {
	
	public static void Insert(GetSet set) throws ClassNotFoundException, SQLException{
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		String sql = "INSERT INTO register(FirstName,lastName,Email,PassWord,PhoneNumber,AdditionDetails,Role) VALUES (?,?,?,?,?,?,'User')";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,set.getFirstName());
		pstmt.setString(2,set.getLastName());
		pstmt.setString(3,set.getEmail());
		pstmt.setString(4,set.getPassWord());
		pstmt.setString(5,set.getPhoneNumber());
		pstmt.setString(6,set.getAdditionDetails());
		pstmt.executeUpdate();
		com.connection.java.ConnectionManager.getInstance().close();
		
	}
	
	public static int checkUser(GetSet get) throws ClassNotFoundException, SQLException{
		//Class.forName("com.mysql.jdbc.Driver");
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		String email = get.getEmail();
		System.out.println(email);
		String sql = "SELECT * FROM register WHERE Email=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		//ResultSet rs = pstmt.executeQuery();
		
		pstmt.setString(1,get.getEmail());
		//pstmt.setString(2,get.getLastName());
		ResultSet rs = pstmt.executeQuery();
		System.out.println(rs);
		
		int count =0;
		while(rs.next()){
			count = rs.getInt(1);
		}
		com.connection.java.ConnectionManager.getInstance().close();
		return count;
		
	}
	
}
