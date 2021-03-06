package com.logOut;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

/**
 * Servlet implementation class logOutPage
 */
@WebServlet("/logOutPage")
public class logOutPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logOutPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String sessionVal = (String) request.getSession(false).getAttribute("userName");
		String sessionEmail = (String) request.getSession(false).getAttribute("Email");
		String sessionPassWord = (String) request.getSession(false).getAttribute("passWord");
		String sessionUserRole = (String) request.getSession(false).getAttribute("userRole");

		if(sessionVal != null){
			HttpSession session = request.getSession(true);
			response.sendRedirect("index.jsp");
			// session.setAttribute("user", null);
			session.removeAttribute("userName");
			session.setMaxInactiveInterval(1*60); //in seconds
			
		}else{
			response.sendRedirect("index.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}
