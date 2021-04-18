package com.db_Connection;
import java.sql.*;

public class Database_Connection {
	

	
		

		public static  PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException,SQLException
		{
			
				String url="jdbc:mysql://localhost:3306/beautycare";
				String user="root";
				String pass="admin";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,user,pass);
				PreparedStatement ps=con.prepareStatement(sql);
				System.out.println("connection succeed");
				return ps;
			
		}
	}

