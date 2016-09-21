package com.addSpace.java;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.java.ContactDbManager;
import com.contact.java.ContactGetSet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.*;
import java.util.*;
import java.io.*;
import java.util.Iterator;
import java.util.List;
import java.io.File;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class SpaceServlet
 */
@WebServlet("/SpaceServlet")
public class SpaceServlet extends HttpServlet {
	
	
	
	
	
	
	
	
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SpaceServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
/*		String itemName = "";
	     try (PrintWriter out = response.getWriter()) {
	            String ImageFile = "";
	            
	           
	            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	if (!isMultipart)
	{
	}
	else
	{
	FileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	List items = null;
	try
	{
	items = upload.parseRequest(request);
	}
	catch (FileUploadException e)
	{
	e.getMessage();
	}
	 
	Iterator itr = items.iterator();
	while (itr.hasNext())
	{
	FileItem item = (FileItem) itr.next();
	if (item.isFormField())
	{
	String name = item.getFieldName();

	String value = item.getString();

	}
	else
	{
	try
	{

	itemName= item.getName();
	File savedFile = new File("C:\\project\\ParkingSystem\\WebContent\\ParkingImages\\"+itemName);
	item.write(savedFile);

	}
	catch (Exception e)
	{
	out.println("Error"+e.getMessage());
	}
	}
	}

	}
	}*/

		String Name = request.getParameter("Name");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Address = request.getParameter("Address");
		String longitude = request.getParameter("longitude");
		String latitude = request.getParameter("latitude");		
		String slots = request.getParameter("slots");
		String Description = request.getParameter("Description");
		String Instruction = request.getParameter("Instruction");
		String price = request.getParameter("price");

		SpaceGetSet initialVariable2 = new SpaceGetSet();

		initialVariable2.setName(Name);
		initialVariable2.setPhoneNumber(PhoneNumber);
		initialVariable2.setAddress(Address);
		initialVariable2.setLongitude(longitude);
		initialVariable2.setLatitude(latitude);
		initialVariable2.setSlots(slots);
		initialVariable2.setDescription(Description);
		initialVariable2.setInstruction(Instruction);
		initialVariable2.setPrice(price);
		//initialVariable2.setItemName(itemName);

		try {
			SpaceDbManager.Insert(initialVariable2);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
