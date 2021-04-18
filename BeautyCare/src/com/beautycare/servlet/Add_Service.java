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

/**
 * Servlet implementation class Add_Service
 */
@WebServlet("/Add_Service")
public class Add_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Add_Service() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Service_Name=request.getParameter("Service_Name");
		 String Cost=request.getParameter("Cost");
		 try
		    {
		    	PreparedStatement statement=Database_Connection.getPreparedStatement("insert into Services values(?,?)");
		    	statement.setString(1,Service_Name);
		    	statement.setString(2,Cost);
		    	
		    	
		    	int count=statement.executeUpdate();
	         System.out.println(count+" row/s affected");
	         request.setAttribute("acknowledge", "Inserted Sucessfully");
	         RequestDispatcher rd=request.getRequestDispatcher("AddService.jsp");
	         rd.include(request, response);
		    }catch(Exception e)
		    {
		    	System.out.println(e);
		    } 
		}
	
	}


