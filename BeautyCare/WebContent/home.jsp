<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.db_Connection.*" %>
    <%@ page import="java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial -scale=1.0">
<title>Beauty Care</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet">

</head>
<body bgcolor="#fad390">
	<%@ include file="header.jsp" %>
  	<div >
		 <center><img class="beautybanner" src="images/Beauty.jpg" width="1200px" height="500px"></center>
	</div>
	<center>
 		<p class="beauty-quotes">LOVE OF BEAUTY IS <br/> TASTE! <br/>THE CREATION OF BEAUTY IS <br/>ART!</p>
 		<hr>
 		<div class="formbg">
  			<form action="Add_appointment" method="post">
			  	<div class="title">
					 Make an Appointment
				</div>
                <label class="label">Name</label>
	  			<input type="text" class="input" placeholder="Enter Your Name" name="CustomerName" required><br><br>
			  	<label class="label">Email</label>
			    <input type="text" class="input" placeholder="Enter Your Email" name="CustomerEmail" required><br><br>
			    <label class="label">Service</label>
				<select class="input" name="Services">
	<%				
   try{
	
	
	PreparedStatement statement=Database_Connection.getPreparedStatement("select * from services");
	
	ResultSet resultset=statement.executeQuery();
	while(resultset.next())
    {
		
		String Service_Name=resultset.getString(1);
		out.println("<option value='"+Service_Name+"'>"+Service_Name+"</option>");
    }
   }catch(Exception e)
	{
	   e.printStackTrace();
	}
	
	%>
				  </select><br><br>
				  <label class="label">Date</label>
				  <input class="input" type="date" name="Date" required><br><br>
				  <label class="label" >Time</label>
				  <select class="input" name="Time">
						  <option value="Select"> Select Time </option>
						  <option value="9.00am-10.00am">9.00am - 10.00am</option>
						  <option value="1.30pm-2.30pm">1.30pm - 2.30pm</option>
						  <option value="6.30pm-7.30pm">6.30pm - 7.30pm</option>
				  </select><br><br>
				  <label class="label">Phone</label>
				  <input class="input" type="text" name="PhoneNumber" placeholder="Enter Your Phone Number" required><br><br>
				  <input class="click" type="submit" value="Book an Appointment"><br><br>
			</form>
		</div>
	</center>  
	<%@ include file ="footer.jsp" %>
</body>
</html>