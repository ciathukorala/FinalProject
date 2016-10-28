package com.addSpace.java;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

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
@MultipartConfig(maxFileSize = 16177215)   
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

		 InputStream inputStream = null; // input stream of the upload file
         
	        // obtains the upload file part in this multipart request
	  /*      Part filePart = request.getPart("ParkImage");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
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
		//initialVariable2.setInputStream(inputStream);
		//initialVariable2.setItemName(itemName);

		try {
			SpaceDbManager.Insert(initialVariable2);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String nextJSP = "/index.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request,response);

	}

}
