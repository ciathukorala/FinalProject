package com.mapShow.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String Sdate = request.getParameter("Sdate");
		String Edate = request.getParameter("Edate");
		String Price = request.getParameter("Price");
		
		System.out.println(Id);
		System.out.println(Sdate);
		System.out.println(Edate);
		System.out.println(Price);
		
	
		
		Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
		System.out.println("reg db manager");
		
		String sessionUserId = (String) request.getSession(false).getAttribute("UserId");		
		System.out.println(sessionUserId);
		
		/*String sql = "INSERT INTO booking(Reg_Id,ParkingId,Begin,End,Price,IsCancelled) VALUES (sessionUserId,'1','2016-10-23 06:20:19','2016-10-26 04:13:19','450','null')";
		PreparedStatement pstmt;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
*/
		String sql = "INSERT INTO booking(Reg_Id,ParkingId,Begin,End,Price,IsCancelled) VALUES (?,?,?,?,?,'null')";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,sessionUserId);
			pstmt.setString(2,Id);
			pstmt.setString(3,Sdate);
			pstmt.setString(4,Edate);
			pstmt.setString(5,Price);
			pstmt.executeUpdate();
			com.connection.java.ConnectionManager.getInstance().close();
			
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}		
		
		
		String sessionEmail = (String) request.getSession(false).getAttribute("Email");	
		
		System.out.println(sessionEmail);
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