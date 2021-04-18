<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.db_Connection.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
</head>
<body bgcolor=#F5FFFA>
<center>
<form class="admin_add_form" action="Invoice" method="post" >
			<h1 class="add_title">Billing</h1>
			<label class="label_arrange">Customer Name</label><br>
      		<input class="add_input" type="text" name="Name" placeholder="Full Name"><br><br>
      		 <label class="label_arrange">Email</label><br>
      		 <input  class="add_input" type="text" name="Email" placeholder="Email id"><br><br>
      		 <label class="label_arrange">Contact Number</label><br>
      		 <input class="add_input" type="text" name="Contact_Number" placeholder="Phone Number"><br><br>
      		  <label class="label_arrange">Service</label><br>
      		 <select class="add_input" name="Services">
	                  <option value="None">Select</option>
	<%				
   try{
	
	
	PreparedStatement statement=Database_Connection.getPreparedStatement("select * from services");
	
	ResultSet resultset=statement.executeQuery();
	String Service_Name;
	while(resultset.next())
    {
		
		 Service_Name=resultset.getString(1);
		
		out.println("<option value='"+Service_Name+"'>"+Service_Name+"</option>");
   
    }
   }catch(Exception e)
	{
	   e.printStackTrace();
	} 
	%>
				  </select><br><br>
      		 <label class="label_arrange">Cost</label><br>
      		 <input class="add_input" type="text" name="cost" ><br><br>
      		 <input class="click_add"  type="submit" value="PRINT" name="action"><br>
		    <span style="color:#0a3d62; text-shadow:2px 1px yellow; font-size:30px;"> ${acknowledge}</span>
</form>
</center>
</body>
</html>