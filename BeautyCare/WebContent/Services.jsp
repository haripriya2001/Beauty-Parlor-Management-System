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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Langar&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Caveat&display=swap" rel="stylesheet">
</head>
<body bgcolor="#f7f1e3">
<%@ include file="header.jsp" %><br><br><br>
<center>
<table class="tablestyling" cellpadding=9 cellspacing=6 border=4 width=70% bgcolor=#ff6b6b>
	
	<tr class="thbg">
	<th>Services</th>
	<th>Cost</th>
	</tr>
	<%				
   try{
	PreparedStatement statement=Database_Connection.getPreparedStatement("select * from services");
	ResultSet resultset=statement.executeQuery();
	while(resultset.next())
    {
		String Service_Name=resultset.getString(1);
		int cost=resultset.getInt(2);
		out.println("<tr class='serv_bg'><td>"+Service_Name+"</td><td>"+cost+"</td></tr>");
    }
    }catch(Exception e)
	{
	   e.printStackTrace();
	}
%>
	
</table>
</center><br><br><br>
	
	
</center><br><br><br>
<%@ include file="footer.jsp" %>
</body>

</html>