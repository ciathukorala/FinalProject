package com.withdrawalBankInfo.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class WithdrawalDbManager {
	public static void Insert(WithdrawalGetSet set) throws ClassNotFoundException, SQLException{
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		String sql = "INSERT INTO withdrawalbankinfo(BankName,AccountNumber,BankCode,inputFName,inputLName,HouseName,StreetAddress,City) VALUES (?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,set.getBankName());
		pstmt.setString(2,set.getAccountNumber());
		pstmt.setString(3,set.getBankCode());
		pstmt.setString(4,set.getInputFName());
		pstmt.setString(5,set.getInputLName());
		pstmt.setString(6,set.getHouseName());
		pstmt.setString(7,set.getStreetAddress());
		pstmt.setString(8,set.getCity());
		pstmt.executeUpdate();
		com.connection.java.ConnectionManager.getInstance().close();
		
	}
}
