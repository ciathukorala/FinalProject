package com.mapShow.java;

import java.io.IOException;
import java.sql.SQLException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.java.ContactDbManager;
import com.contact.java.ContactGetSet;

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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String searchPlace = request.getParameter("searchPlace");
		String start_date = request.getParameter("start_date");
		String start_time = request.getParameter("start_time");
		String end_date = request.getParameter("end_date");
		String end_time = request.getParameter("end_time");
		
		System.out.print(searchPlace);
		System.out.print(start_date);
		System.out.print(start_time);
		System.out.print(end_date);
		System.out.print(end_time);
		
		mapGetSet mapinitial = new mapGetSet();
		
		mapinitial.setSearchPlace(searchPlace);
		mapinitial.setStart_date(start_date);
		mapinitial.setStart_time(start_time);
		mapinitial.setEnd_date(end_date);
		mapinitial.setEnd_time(end_time);
				
		try {
			mapDbManager.Insert(mapinitial);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
