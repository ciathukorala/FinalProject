package com.parking.java;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateRegServlet
 */
@WebServlet("/UpdateRegServlet")
public class UpdateRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateRegServlet() {
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
		
		System.out.println("Hiii ela");

		String hdnParam = request.getParameter("pagename");
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
			UpdateDbManager.Insert(initial);

			// redirect page
			if (initial.getFirstName() == "Success") {
				response.sendRedirect("index.jsp");

			} else {

			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
