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

		String Name = request.getParameter("Name");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Address = request.getParameter("Address");
		String slots = request.getParameter("slots");
		String Description = request.getParameter("Description");
		String Instruction = request.getParameter("Instruction");
		String price = request.getParameter("price");

		SpaceGetSet initialVariable2 = new SpaceGetSet();

		initialVariable2.setName(Name);
		initialVariable2.setPhoneNumber(PhoneNumber);
		initialVariable2.setAddress(Address);
		initialVariable2.setSlots(slots);
		initialVariable2.setDescription(Description);
		initialVariable2.setInstruction(Instruction);
		initialVariable2.setPrice(price);

		try {
			SpaceDbManager.Insert(initialVariable2);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
