package com.beautycare.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.db_Connection.*;


@WebServlet("/Add_appointment")
public class Add_appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Add_appointment() {
        super();
      }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{   
		String UserName = request.getParameter("CustomerName");
		String Email= request.getParameter("CustomerEmail");
		String Services= request.getParameter("Services");
		String Date= request.getParameter("Date");
		String Time= request.getParameter("Time");
	    String PhoneNumber= request.getParameter("PhoneNumber");
	    try
	    {
	    	PreparedStatement statement=Database_Connection.getPreparedStatement("insert into Appointments values(?,?,?,?,?,?)");
	    	statement.setString(1, UserName);
	    	statement.setString(2,Email);
	    	statement.setString(3, Services);
	    	statement.setString(4, Date);
	    	statement.setString(5, Time);
	    	statement.setString(6, PhoneNumber);
	    	int count=statement.executeUpdate();
            System.out.println(count+" row/s affected");
            response.sendRedirect("thanking.jsp");
	    }catch(Exception e)
	    {
	    	System.out.println(e);
	    } 
	  
		
	}

}
