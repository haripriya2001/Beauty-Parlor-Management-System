<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.db_Connection.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointments</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<center>
     <table class="tablestyling" cellpadding=6 cellspacing=6 border=4 width=100% bgcolor=#ff6b6b>
     <tr class="thbg">
     <th>Name</th>
     <th>Email</th>
     <th>Service</th>
     <th>Date</th>
     <th>Time</th>
    <th>Contact_Number</th>
     </tr>
<%

try{
	
	
	PreparedStatement statement=Database_Connection.getPreparedStatement("select * from appointments");
	
	ResultSet resultset=statement.executeQuery();
    while(resultset.next())
    {
		
		String Name=resultset.getString(1);
		String Email=resultset.getString(2);
		String Service=resultset.getString(3);
		Date date=resultset.getDate(4);
	    String time = resultset.getString(5);
		String Contact_Number=resultset.getString(6);
		
     %>
    
     <tr class="serv_bg">
     <td><%out.println(Name); %></td>
     <td><%out.println(Email); %></td>
      <td><%out.println(Service); %></td>
       <td><%out.println(date); %></td>
        <td><%out.println(time); %></td>
     <td><%out.println(Contact_Number); %></td>
     
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