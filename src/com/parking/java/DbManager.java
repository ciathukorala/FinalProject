package com.parking.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbManager {

	public static void Insert(GetSet set) throws ClassNotFoundException, SQLException {
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		ResultSet resultSet = null;
		// call mail send clz

		if (set.getSessionValue() == null) {
			
			com.mail.password.mailPW.mail();

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
			// upate proile query
		}

		if (set.getSessionValue() != null) {
			String Email = set.getSessionEmail();
			String PW = set.getSessionPassWord();
			System.out.println("ggggg" + Email);
			System.out.println("ggggg" + PW);
			Statement statement = conn.createStatement();
			String query = "SELECT * FROM register where Email='" + Email + "'";
			resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				set.setFirstName(resultSet.getString(2));
				set.setLastName(resultSet.getString(3));
				set.setEmail(resultSet.getString(4));
				set.setPassWord(resultSet.getString(5));
				set.setPhoneNumber(resultSet.getString(6));
				set.setAdditionDetails(resultSet.getString(7));
				System.out.println(resultSet.getString(2) + resultSet.getString(3) + resultSet.getString(4)
						+ resultSet.getString(5) + resultSet.getString(6) + resultSet.getString(7));
			}
		}
	}

	public String getPark(String searchPlace,String start_date,String end_date) {
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();

		System.out.println(searchPlace);
		System.out.println(start_date);
		System.out.println(end_date);
	
		
		String output = "";
		try {
			
			
			//String query = "SELECT Id,Name,longitude,latitude,price FROM addspace";
			
			String query = "select * from addspace a where a.Id not in (select ParkingID from booking b where (Begin>='"+start_date+"' AND Begin<'"+end_date+"') OR (End>='"+start_date+"' AND End<'"+end_date+"') )";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				output = output + (rs.getString("Id") + "," + rs.getString("Name") + "," + rs.getString("latitude") + ","
						+ rs.getString("longitude") + "," + rs.getString("price") + "|");
			}

			System.out.println("Output=" + output);

		} catch (Exception e) {

		}
		return output;
	}
}