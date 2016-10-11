package com.addSpace.java;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;

import com.contact.java.ContactGetSet;

public class SpaceDbManager {

	public static void Insert(SpaceGetSet set2) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		String postcode ;
		postcode = set2.getAddress();
		try {
			String latLongs[] = getLatLongPositions(postcode);
			set2.setLongitude(latLongs[0]);
			set2.setLatitude(latLongs[1]);
			System.out.println("Latitude: "+latLongs[0]+" and Longitude: "+latLongs[1]); 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(set2.getName()!=null){
		String sql = "INSERT INTO addspace(Name,PhoneNumber,Address,longitude,latitude,slots,Description,Instruction,price,parkingimg) VALUES (?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, set2.getName());
		pstmt.setString(2, set2.getPhoneNumber());
		pstmt.setString(3, set2.getAddress());
		pstmt.setString(4,set2.getLongitude());
		pstmt.setString(5, set2.getLatitude());
		pstmt.setString(6, set2.getSlots());
		pstmt.setString(7, set2.getDescription());
		pstmt.setString(8, set2.getInstruction());
		pstmt.setString(9, set2.getPrice());
		
		 if (set2.getInputStream() != null) {
             // fetches input stream of the upload file for the blob column
			 pstmt.setBlob(10, set2.getInputStream());
         }

         // sends the statement to the database server
      		
		pstmt.executeUpdate();
		com.connection.java.ConnectionManager.getInstance().close();
		}
		
		
		//retrive DB values
		ResultSet resultSet = null;
		try {
			Statement statement = conn.createStatement();
			String query = "SELECT * FROM addspace";
			resultSet = statement.executeQuery(query);
			
			while (resultSet.next()) {
				set2.setName(resultSet.getString(2));
				set2.setPhoneNumber(resultSet.getString(3));
				set2.setAddress(resultSet.getString(4));
				set2.setLongitude(resultSet.getString(5));
				set2.setLatitude(resultSet.getString(6));
				set2.setSlots(resultSet.getString(7));
				set2.setDescription(resultSet.getString(8));
				set2.setInstruction(resultSet.getString(9));
				set2.setPrice(resultSet.getString(10));
				System.out.println(resultSet.getString(2) + resultSet.getString(3) + resultSet.getString(4)+ resultSet.getString(5) + resultSet.getString(6)+ resultSet.getString(7) + resultSet.getString(8)+ resultSet.getString(9) + resultSet.getString(10)+ resultSet.getString(11));
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	//get longitude latitude values
	 public static String[] getLatLongPositions(String address) throws Exception
	  {
	    int responseCode = 0;
	    String api = "http://maps.googleapis.com/maps/api/geocode/xml?address=" + URLEncoder.encode(address, "UTF-8") + "&sensor=true";
	    URL url = new URL(api);
	    HttpURLConnection httpConnection = (HttpURLConnection)url.openConnection();
	    httpConnection.connect();
	    responseCode = httpConnection.getResponseCode();
	    if(responseCode == 200)
	    {
	      DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();;
	      Document document = builder.parse(httpConnection.getInputStream());
	      XPathFactory xPathfactory = XPathFactory.newInstance();
	      XPath xpath = xPathfactory.newXPath();
	      XPathExpression expr = xpath.compile("/GeocodeResponse/status");
	      String status = (String)expr.evaluate(document, XPathConstants.STRING);
	      if(status.equals("OK"))
	      {
	         expr = xpath.compile("//geometry/location/lat");
	         String latitude = (String)expr.evaluate(document, XPathConstants.STRING);
	         expr = xpath.compile("//geometry/location/lng");
	         String longitude = (String)expr.evaluate(document, XPathConstants.STRING);
	         return new String[] {latitude, longitude};
	      }
	      else
	      {
	         throw new Exception("Error from the API - response status: "+status);
	      }
	    }
	    return null;
	  }

}
