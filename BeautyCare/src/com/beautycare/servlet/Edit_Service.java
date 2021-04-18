package com.beautycare.servlet;

import java.io.IOException;

import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db_Connection.Database_Connection;
import java.util.*;


@WebServlet("/Edit_Service")
public class Edit_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Edit_Service() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String Previous_serv_name=(String)session.getAttribute("serviceName");
		String Previous_cost=(String)session.getAttribute("cost");
		int Prev_cost=Integer.parseInt(Previous_cost);
		String serviceName=request.getParameter("serv_name");
		String Cost= request.getParameter("cost");
		int cost=Integer.parseInt(Cost);
		String actiontype=request.getParameter("action");
		try{
		if(actiontype.equals("UPDATE"))
		{
			PreparedStatement statement=Database_Connection.getPreparedStatement("UPDATE services SET Service_Name= ? ,cost= ? where Service_Name= ?");
		    statement.setString(1,serviceName);
		    statement.setInt(2, cost);
		    statement.setString(3, Previous_serv_name );
		   
			statement.executeUpdate();
			request.setAttribute("acknowledge", "Updated Sucessfully");
	         RequestDispatcher rd=request.getRequestDispatcher("Service_edit.jsp");
	         rd.include(request, response);
			
		}
		else if(actiontype.equals("DELETE"))
		{
			PreparedStatement statement=Database_Connection.getPreparedStatement("DELETE  from services where Service_Name= ? " );
	        statement.setString(1,Previous_serv_name);
	        
			statement.executeUpdate();
			request.setAttribute("acknowledge", "Deleted Sucessfully");
	         RequestDispatcher rd=request.getRequestDispatcher("Service_edit.jsp");
	         rd.include(request, response);
			
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
