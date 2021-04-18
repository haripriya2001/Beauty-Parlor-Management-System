<%@page import="com.db_Connection.Database_Connection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body bgcolor=#F5FFFA>
<center>
     <table class="tablestyling" cellpadding=9  border=4 width=70% bgcolor=#ff6b6b>
     <tr class="thbg">
     <th>ServiceName</th>
     <th>Cost</th>
     <th>Updations</th>
     
     
     
     </tr>
<%

try{
	
	
	PreparedStatement statement=Database_Connection.getPreparedStatement("select * from services");
	
	ResultSet resultset=statement.executeQuery();
    while(resultset.next())
    {
		
		String Service_Name=resultset.getString(1);
		int Cost=resultset.getInt(2);
     %>
     
     <tr class="serv_bg">
     <td><%out.println(Service_Name); %></td>
     <td ><%out.println(Cost); %></td>
     <td><a class="anchor_edit" href="Service_edit.jsp?servname=<%=Service_Name %>&cost=<%=Cost%>"> Edit</a>
     </td>
     
    
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