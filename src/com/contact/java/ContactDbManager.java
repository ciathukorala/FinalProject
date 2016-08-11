package com.contact.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ContactDbManager {
	
	public static void Insert(ContactGetSet set) throws ClassNotFoundException, SQLException{
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		String sql = "INSERT INTO contact(Name,Email,Subject,Message) VALUES (?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,set.getName());
		pstmt.setString(2,set.getEmail());
		pstmt.setString(3,set.getSubject());
		pstmt.setString(4,set.getMessage());
		pstmt.executeUpdate();
		com.connection.java.ConnectionManager.getInstance().close();
		
	}

	
}
