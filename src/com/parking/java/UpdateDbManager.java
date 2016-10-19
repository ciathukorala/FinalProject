package com.parking.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdateDbManager {
	
	public static void Insert(GetSet set) throws ClassNotFoundException, SQLException {
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		ResultSet resultSet = null;
		
		if (set.getSessionValue() == null) {
			
			String sql = "INSERT INTO register(FirstName,lastName,Email,PassWord,PhoneNumber,AdditionDetails,Role) VALUES (?,?,?,?,?,?,'User')";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, set.getFirstName());
			pstmt.setString(2, set.getLastName());
			pstmt.setString(3, set.getEmail());
			pstmt.setString(4, "1234qwer$");
			pstmt.setString(5, set.getPhoneNumber());
			pstmt.setString(6, set.getAdditionDetails());
			pstmt.executeUpdate();
			com.connection.java.ConnectionManager.getInstance().close();

			set.setFirstName("Success");
		} else {
			
		}
	}
}
