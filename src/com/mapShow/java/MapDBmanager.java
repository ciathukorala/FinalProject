package com.mapShow.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.contact.java.ContactGetSet;

public class MapDBmanager {
	public static void Insert(mapGetSet set) throws ClassNotFoundException, SQLException{
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		ResultSet resultSet = null;
		try {	
			Statement statement = conn.createStatement();
			String query = "SELECT * FROM addspace where Id='"+set.getId()+"'";
			resultSet = statement.executeQuery(query);
					
			while (resultSet.next()) {
				set.setName(resultSet.getString(2));
				set.setPhoneNumber(resultSet.getString(3));
				set.setAddress(resultSet.getString(4));
				set.setDescription(resultSet.getString(8));
				set.setInstruction(resultSet.getString(9));
				set.setPrice(resultSet.getString(10));
				System.out.println(resultSet.getString(2) + resultSet.getString(3) + resultSet.getString(8) + resultSet.getString(9) + resultSet.getString(10));
			}
						
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
	}
}
