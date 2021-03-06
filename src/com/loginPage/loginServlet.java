package com.loginPage;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.contact.java.ContactDbManager;
import com.contact.java.ContactGetSet;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		
		String Email = request.getParameter("Email");
		String PassWord = request.getParameter("PassWord");
						
		loginGetSet initialVariable = new loginGetSet();
		
		initialVariable.setEmail(Email);
		initialVariable.setPassWord(PassWord);
		

		try {
			loginDbManager.Insert(initialVariable);
			
			//redirect page
			if(initialVariable.getEmail().equals(initialVariable.getResultEmail())&&initialVariable.getPassWord().equals(initialVariable.getResultPassWord())){
			
			//set session veriables
				
				 HttpSession session=request.getSession();
				 session.setAttribute("UserId",initialVariable.getUserID());
		         session.setAttribute("userName",initialVariable.getResultFirstName());
		         session.setAttribute("userRole",initialVariable.getResultRole());
		         session.setAttribute("Email",initialVariable.getResultEmail());
		         session.setAttribute("passWord",initialVariable.getResultPassWord());		         
		         
		         //set select value to request
		         request.setAttribute("Email", initialVariable.getResultEmail());
		         request.setAttribute("Role", initialVariable.getResultRole());
				
			String nextJSP = "/index.jsp";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
			dispatcher.forward(request,response);}else{
				String nextJSP = "/SignPage.jsp";
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
				dispatcher.forward(request,response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
