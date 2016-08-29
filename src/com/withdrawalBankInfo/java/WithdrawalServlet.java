package com.withdrawalBankInfo.java;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WithdrawalServlet
 */
@WebServlet("/WithdrawalServlet")
public class WithdrawalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WithdrawalServlet() {
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
		
		String BankName = request.getParameter("BankName");
		String AccountNumber = request.getParameter("AccountNumber");
		String BankCode = request.getParameter("BankCode");
		String inputFName = request.getParameter("inputFName");
		String inputLName = request.getParameter("inputLName");
		String HouseName = request.getParameter("HouseName");
		String StreetAddress = request.getParameter("StreetAddress");
		String City = request.getParameter("City");
				
		WithdrawalGetSet initialVariable = new WithdrawalGetSet();
		
		initialVariable.setBankName(BankName);
		initialVariable.setAccountNumber(AccountNumber);
		initialVariable.setBankCode(BankCode);
		initialVariable.setInputFName(inputFName);
		initialVariable.setInputLName(inputLName);
		initialVariable.setHouseName(HouseName);
		initialVariable.setStreetAddress(StreetAddress);
		initialVariable.setCity(City);
		
		
			try {
				WithdrawalDbManager.Insert(initialVariable);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
