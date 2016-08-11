package com.parking.java;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegServlet() {
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
		doGet(request, response);

		System.out.println("Hiii ela");

		String hdnParam = request.getParameter("pagename");
		// if(hdnParam.equals("register")){
		System.out.println("reg conect");
		String FirstName = request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String Email = request.getParameter("Email");
		String PassWord = request.getParameter("PassWord");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String AdditionDetails = request.getParameter("AdditionDetails");

		GetSet initial = new GetSet();

		initial.setFirstName(FirstName);
		initial.setLastName(LastName);
		initial.setEmail(Email);
		initial.setPassWord(PassWord);
		initial.setPhoneNumber(PhoneNumber);
		initial.setAdditionDetails(AdditionDetails);

		try {
			DbManager.Insert(initial);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// }

		if (hdnParam.equals("login")) {
			System.out.println("con log");
			String email = request.getParameter("Email");
			String passWord = request.getParameter("PassWord");
			if ((Email.equals("admin")) & (PassWord.equals("admin"))) {
				response.sendRedirect("admin.jsp");
			} else {
				GetSet initials = new GetSet();

				initials.setEmail(email);
				initials.setPassWord(passWord);

				try {
					int checkUser = DbManager.checkUser(initial);
					if (checkUser == 1) {
						response.sendRedirect("welcome.jsp");
					} else {
						response.sendRedirect("login.jsp");
					}
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

	}

}
