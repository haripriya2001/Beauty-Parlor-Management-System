package com.beautycare.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.beautycare.bean.*;

import com.db_Connection.Database_Connection;

public class AdminAuthenticateDao {
	public static String authenticateAdmin(AdminAuthenticateBean adminbean)
	{
		String user_Id =adminbean.getUserId();
		String passWord=adminbean.getPassWord();
		
		String userIdDB;
		String passWordDB="";
		
		try
		{
			PreparedStatement statement=Database_Connection.getPreparedStatement("select * from admin");
			ResultSet resultset=statement.executeQuery();
		    while(resultset.next())
		    {
		    	userIdDB= resultset.getString(1);
		    	passWordDB=resultset.getString(2);
		    	
		    	
		    	if(userIdDB.equals(user_Id) && passWordDB.equals(passWord))
		    	{ 
		    		return "admin";
		    	}
		    	
		     }
		 }catch(Exception e)
		  {
		     e.printStackTrace();
		  }
	return "Invalid Credential";	
	}
}
