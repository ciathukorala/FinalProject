/*package com.jhjhjhjhjh;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.*;

import java.util.Iterator;
import java.util.List;
import java.io.File;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

*//**
 * Servlet implementation class image
 *//*
@WebServlet("/image")
public class image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public image() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	    ResultSet res;
	    Statement stmt;
	    Connection conn = com.connection.java.ConnectionManager.getInstance().getConnection();
	    String ImageFile,itemName;
	    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	    
	    ImageFile="";
        itemName = "";
        if (!isMultipart)
        {
        }
        else
        {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = null;
        try
        {
        items = upload.parseRequest(request);
        }
        catch (FileUploadException e)
        {
        e.getMessage();
        }
         
        Iterator itr = items.iterator();
        while (itr.hasNext())
        {
        FileItem item = (FileItem) itr.next();
        if (item.isFormField())
        {

        	
        String value = item.getString();
        String name = item.getFieldName();

        if(name.equals("image"))
        {
        ImageFile=value;
        }
         
        }
        else
        {
        try
        {

        itemName= item.getName();
        File savedFile = new File("C:\\Users\\Ishara\\Documents\\NetBeansProjects\\CabService\\web\\upload\\"+itemName);
        item.write(savedFile);

        }
        catch (Exception e)
        {
        System.out.println("Error"+e.getMessage());
        }
        }
        }
	}
        try
        { 
         stmt=conn.createStatement();
         String query=("INSERT INTO  images VALUES(default,'"+itemName+"')");
          int i=stmt.executeUpdate(query);
            
                    if(i>0)
                    {
                        response.setContentType("text/html");  
                        out.println("<script type=\"text/javascript\">");  
                        out.println("alert('successfully registered');"); 
                        out.println("location='adminAddDriverImage.jsp';");
                        out.println("</script>");
                        
                }
                    else
                    {
                        response.setContentType("text/html");  
                        out.println("<script type=\"text/javascript\">");  
                        out.println("alert('Error in  registered');"); 
                        out.println("location='adminAddDriverImage.jsp';");
                        out.println("</script>");
                        
                        
                    }
        }
        catch(Exception el)
        {
        System.out.println("Inserting error"+el.getMessage());
        }
        }
        
                
            
                
}



*/