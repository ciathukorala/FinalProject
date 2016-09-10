package controls;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connectionRetriveValue.connection;



import model.SpaceModel;

//@WebServlet("/GetMessages1")
public class GetSpace extends HttpServlet {
private static final long serialVersionUID = 1L;

public GetSpace() {
super();
}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
PrintWriter out = response.getWriter();
try
{
connection database= new connection();
SpaceModel projectManager= new SpaceModel();
ArrayList messagesData = null;
Connection connection = database.Get_Connection();
messagesData = projectManager.GetMessages(connection, request, response);

System.out.println(messagesData);

}
catch (Exception ex)
{
out.println("Error: " + ex.getMessage());
}
finally
{
out.close();
}
}
}
