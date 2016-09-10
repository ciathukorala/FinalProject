package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.SpaceGetSet;

public class daoSpace {
	
	public ArrayList GetMessages(Connection connection,HttpServletRequest request,HttpServletResponse response) throws Exception
	{
	ArrayList messageData = new ArrayList();
	try
	{
	PreparedStatement ps = connection.prepareStatement("SELECT * FROM addspace");
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
	SpaceGetSet messageObject = new SpaceGetSet();
	messageObject.setId(rs.getString("id"));
	messageObject.setName(rs.getString("name"));
	messageObject.setPhoneNumber(rs.getString("phoneNumber"));
	messageObject.setAddress(rs.getString("address"));
	messageObject.setSlots(rs.getString("slots"));
	messageObject.setDescription(rs.getString("description"));
	messageObject.setInstruction(rs.getString("instruction"));
	messageObject.setPrice(rs.getString("price"));
	
	messageData.add(messageObject);
	}
	return messageData;
	}
	catch(Exception e)
	{
	throw e;
	}
	}

}
