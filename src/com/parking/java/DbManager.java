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
			// com.mail.password.mailPW.mail();

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
			System.out.println("ggggg"+Email);
			System.out.println("ggggg"+PW);
			Statement statement = conn.createStatement();
			String query = "SELECT * FROM register where Email='"+Email+"'";
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
}
