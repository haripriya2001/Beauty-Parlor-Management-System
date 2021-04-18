package com.beautycare.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db_Connection.Database_Connection;


@WebServlet("/Add_Customer")
public class Add_Customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Add_Customer() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String Name=request.getParameter("Name");
	 String Email=request.getParameter("Email");
	 String Contact_Number=request.getParameter("Contact_Number");
	 String Gender=request.getParameter("gender");
	 try
	    {
	    	PreparedStatement statement=Database_Connection.getPreparedStatement("insert into Customers values(?,?,?,?)");
	    	statement.setString(1, Name);
	    	statement.setString(2,Email);
	    	statement.setString(3,  Contact_Number);
	    	statement.setString(4,Gender);
	    	
	    	int count=statement.executeUpdate();
         System.out.println(count+" row/s affected");
         request.setAttribute("acknowledge", "Inserted Sucessfully");
         RequestDispatcher rd=request.getRequestDispatcher("AddCustomer.jsp");
         rd.include(request, response);
	    }catch(Exception e)
	    {
	    	System.out.println(e);
	    } 
	}

}
