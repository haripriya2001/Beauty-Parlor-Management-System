package com.beautycare.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.beautycare.bean.*;
import com.beautycare.dao.*;



@WebServlet("/Admin_Authentication")
public class Admin_Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Admin_Authentication() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String UserName = request.getParameter("UserName");
		String 	Password= request.getParameter("Password");
		AdminAuthenticateBean adminbean = new AdminAuthenticateBean();
		adminbean.setUserName(UserName);
		adminbean.setPassWord(Password);
	
		
		try
		{
			
			String validate=AdminAuthenticateDao.authenticateAdmin(adminbean);
			if(validate=="admin")
			{
				HttpSession session=request.getSession();
				session.setAttribute("userId", UserName);
	            session.setMaxInactiveInterval(20);
				response.sendRedirect("AdminHome.jsp");
			}
			
			else
			{
				request.setAttribute("error", "Invalid Credentials");
                RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
                rd.include(request, response);
            }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	}


