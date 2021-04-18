package com.beautycare.servlet;

//import java.io.FileOutputStream;

import java.io.IOException;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db_Connection.Database_Connection;
import com.beautycare.billpdf.*;
/*import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfWriter ;
import com.itextpdf.text.Paragraph ;*/

@WebServlet("/Invoice")
public class Invoice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Invoice() {
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
		String Customer_Name=request.getParameter("Name");
		String Email_Id =request.getParameter("Email");
		String Contact_Number=request.getParameter("Contact_Number");
		String Service_Name=request.getParameter("Services");
		String Cost=request.getParameter("cost");

		String action=request.getParameter("action");
		if(action.equals("PRINT"))
				{
		 try
		    {
		    	PreparedStatement statement=Database_Connection.getPreparedStatement("insert into invoice values(?,?,?,?,?)");
		    	statement.setString(1,Customer_Name);
		    	statement.setString(2,Email_Id);
		    	statement.setString(3,  Contact_Number);
		    	statement.setString(4,Service_Name);
		    	statement.setString(5,Cost);
		    	
		    	
		    	int count=statement.executeUpdate();
	         System.out.println(count+" row/s affected");
	         request.setAttribute("acknowledge", "Saved");
	         RequestDispatcher rd=request.getRequestDispatcher("Invoice_form.jsp");
	         rd.include(request, response);
	         GeneratePdf gp =new GeneratePdf();
	         
	 		gp.generatePdf(Service_Name,Cost);
		    }catch(Exception e)
		    {
		    	System.out.println(e);
		    } 
		}		
/*	else if(action.equals("PRINT"))
		{
		
		GeneratePdf gp =new GeneratePdf();
		gp.generatePdf(Service_Name,Cost);
	}*/
}
}
