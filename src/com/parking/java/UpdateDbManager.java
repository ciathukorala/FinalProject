package com.parking.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdateDbManager {
	
	public static void Insert(GetSet set) throws ClassNotFoundException, SQLException {
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("update reg db manager");
		ResultSet resultSet = null;
		
		if (set.getSessionValue() == null) {
			
			
			String sql = "UPDATE register SET FirstName='"+set.getFirstName()+"', lastName='"+set.getLastName()+"',PassWord='"+set.getPassWord()+"',PhoneNumber='"+set.getPhoneNumber()+"',AdditionDetails='"+set.getAdditionDetails()+"' WHERE Email='"+set.getEmail()+"'";
			//String sql = "INSERT INTO register(FirstName,lastName,Email,PassWord,PhoneNumber,AdditionDetails,Role) VALUES (?,?,?,?,?,?,'User')";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			
			pstmt.executeUpdate();
			com.connection.java.ConnectionManager.getInstance().close();

			set.setFirstName("Success");
		} else {
			
		}
	}
}
