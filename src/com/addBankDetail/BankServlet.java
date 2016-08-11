package com.addBankDetail;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BankServlet
 */
@WebServlet("/BankServlet")
public class BankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BankServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		

		String inputFName = request.getParameter("inputFName");
		String inputLName = request.getParameter("inputLName");
		String inputCardNumber = request.getParameter("inputCardNumber");
		String date = request.getParameter("date");
		String CVV = request.getParameter("CVV");
		String HouseName = request.getParameter("HouseName");
		String StreetAddress = request.getParameter("StreetAddress");
		String City = request.getParameter("City");
				
		BankGetSet initialVariable = new BankGetSet();
		
		initialVariable.setInputFName(inputFName);
		initialVariable.setInputLName(inputLName);
		initialVariable.setInputCardNumber(inputCardNumber);
		initialVariable.setDate(date);
		initialVariable.setCVV(CVV);
		initialVariable.setHouseName(HouseName);
		initialVariable.setStreetAddress(StreetAddress);
		initialVariable.setCity(City);
		
		
			try {
				BankDbManager.Insert(initialVariable);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

}
