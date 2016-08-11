package com.addBankDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BankDbManager {
	
	public static void Insert(BankGetSet set) throws ClassNotFoundException, SQLException{
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		String sql = "INSERT INTO paymentbankdetail(inputFName,inputLName,inputCardNumber,date,CVV,HouseName,StreetAddress,City) VALUES (?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,set.getInputFName());
		pstmt.setString(2,set.getInputLName());
		pstmt.setString(3,set.getInputCardNumber());
		pstmt.setString(4,set.getDate());
		pstmt.setString(5,set.getCVV());
		pstmt.setString(6,set.getHouseName());
		pstmt.setString(7,set.getStreetAddress());
		pstmt.setString(8,set.getCity());
		pstmt.executeUpdate();
		com.connection.java.ConnectionManager.getInstance().close();
		
	}
}
