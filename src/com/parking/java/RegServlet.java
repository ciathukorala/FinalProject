package com.parking.java;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

		String sessionVal = (String) request.getSession(false).getAttribute("userName");
		String sessionEmail = (String) request.getSession(false).getAttribute("Email");
		String sessionPassWord = (String) request.getSession(false).getAttribute("passWord");

		System.out.print("Update Profile");
		GetSet initial = new GetSet();
		initial.setSessionValue(sessionVal);
		initial.setSessionEmail(sessionEmail);
		initial.setSessionPassWord(sessionPassWord);
		
		try {
			DbManager.Insert(initial);

			// update Value
			if (sessionVal != null) {
				request.setAttribute("FirstName", initial.getFirstName());
				request.setAttribute("LastName", initial.getLastName());
				request.setAttribute("Email", initial.getEmail());
				request.setAttribute("PassWord", initial.getPassWord());
				request.setAttribute("PhoneNumber", initial.getPhoneNumber());
				request.setAttribute("AdditionDetails", initial.getAdditionDetails());

				System.out.println("redirect");
				String nextJSP = "/registerNewUser.jsp";
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
				dispatcher.forward(request, response);
				return;
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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
	
	public String getParkList(String searchPlace,String start_date,String start_time,String end_date,String end_time) throws SQLException{
System.out.println("IN JAVA");

		DbManager dbMngr = new DbManager();
		
		String output = dbMngr.getPark(searchPlace,start_date,start_time,end_date,end_time);
		
		return output;
	}
}
