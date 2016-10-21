package com.mapShow.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.contact.java.ContactGetSet;

public class mapDbManager {

	public static void Insert(mapGetSet set) throws ClassNotFoundException, SQLException{
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("map db manager");
		
		/*String sql = "INSERT INTO contact(Name,Email,Subject,Message) VALUES (?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,set.getName());
		pstmt.setString(2,set.getEmail());
		pstmt.setString(3,set.getSubject());
		pstmt.setString(4,set.getMessage());
		pstmt.executeUpdate();
		com.connection.java.ConnectionManager.getInstance().close();*/
		System.out.println(set.getSearchPlace());
	}
	
}
