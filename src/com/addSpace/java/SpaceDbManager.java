package com.addSpace.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.contact.java.ContactGetSet;

public class SpaceDbManager {

	public static void Insert(SpaceGetSet set2) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");

		String sql = "INSERT INTO addspace(Name,PhoneNumber,Address,slots,Description,Instruction,price) VALUES (?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, set2.getName());
		pstmt.setString(2, set2.getPhoneNumber());
		pstmt.setString(3, set2.getAddress());
		pstmt.setString(4, set2.getSlots());
		pstmt.setString(5, set2.getDescription());
		pstmt.setString(6, set2.getInstruction());
		pstmt.setString(7, set2.getPrice());
		pstmt.executeUpdate();
		com.connection.java.ConnectionManager.getInstance().close();
	}

}
