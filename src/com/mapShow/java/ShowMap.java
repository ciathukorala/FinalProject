package com.mapShow.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.java.ContactDbManager;
import com.contact.java.ContactGetSet;
import com.loginPage.loginGetSet;
import com.lowagie.text.DocumentException;
import com.parking.java.DbManager;

/**
 * Servlet implementation class ShowMap
 */
@WebServlet("/ShowMap")
public class ShowMap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowMap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("hiiiiiii servlet");
		
		String Id = request.getParameter("Id");
		System.out.println(Id);
		
		
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		
		String sql = "INSERT INTO booking(Reg_Id,ParkingId,Begin,End,Price,IsCancelled) VALUES ('1','1','2016-10-23 06:20:19','2016-10-26 04:13:19','50','null')";
		PreparedStatement pstmt;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		
		
		String sessionEmail = (String) request.getSession(false).getAttribute("Email");						
		mapGetSet initialVariable = new mapGetSet();		
		initialVariable.setEmail(sessionEmail);
		initialVariable.setId(Id);

		try {
			MapDBmanager.Insert(initialVariable);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//set mail address
		try {
			String[] args = {};
			com.mail.java.mail.main(initialVariable.getEmail());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		request.setAttribute("Name", initialVariable.getName());
		request.setAttribute("PhoneNumber", initialVariable.getPhoneNumber());
		request.setAttribute("Address", initialVariable.getAddress());
		request.setAttribute("Description", initialVariable.getDescription());
		request.setAttribute("Instruction", initialVariable.getInstruction());
		request.setAttribute("getPrice", initialVariable.getPrice());
		
		String nextJSP = "/BookingPark/Book.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	
	}
	
}
