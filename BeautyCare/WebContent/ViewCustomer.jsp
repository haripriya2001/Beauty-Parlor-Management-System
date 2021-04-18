<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.db_Connection.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body bgcolor=#F5FFFA>
<center>
     <table class="tablestyling" cellpadding=8 cellspacing=6 border=4 width=100% bgcolor=#ff6b6b>
     <tr class="thbg">
     <th>Customer Name</th>
     <th>Email</th>
     <th>Contact Number</th>
     <th>Gender</th>
     </tr>
<%

try{
	
	
	PreparedStatement statement=Database_Connection.getPreparedStatement("select * from Customers");
	
	ResultSet resultset=statement.executeQuery();
    while(resultset.next())
    {
		
		String Customer_Name=resultset.getString(1);
		String Email=resultset.getString(2);
		String Contact_Number=resultset.getString(3);
		String gender=resultset.getString(4);
     %>
    
     <tr class="serv_bg">
     <td><%out.println(Customer_Name); %></td>
     <td><%out.println(Email); %></td>
     <td><%out.println(Contact_Number); %></td>
     <td><%out.println(gender); %></td>
     </tr>
     
<%
}  
}catch(Exception e)
{
	System.out.println(e);
}
%>
</table>
 </center>
</body>
</html>