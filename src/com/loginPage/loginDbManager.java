package com.loginPage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.addBankDetail.BankGetSet;

public class loginDbManager {

	public static void Insert(loginGetSet set) throws ClassNotFoundException, SQLException{
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		ResultSet resultSet = null;
		try {
			
		
			Statement statement = conn.createStatement();
			String query = "SELECT * FROM register where Email='"+set.getEmail()+"' AND PassWord='"+set.getPassWord()+"'";
			resultSet = statement.executeQuery(query);
			
			
			while (resultSet.next()) {
				set.setResultEmail(resultSet.getString(4));
				set.setResultPassWord(resultSet.getString(5));
				set.setResultFirstName(resultSet.getString(2));
				set.setResultRole(resultSet.getString(8));
				System.out.println(resultSet.getString(1) + resultSet.getString(2) + resultSet.getString(3));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}
}
