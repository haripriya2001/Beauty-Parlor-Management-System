<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link  rel="stylesheet" href="css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
</head>
<body bgcolor=#fad390>
<%@ include file="header.jsp" %>
<div >
		 <center><img class="beautybanner" src="images/beautyimage1.jpg" width="1200px" height="500px"></center>
	</div>
	<center>
	<table class="contact_table" width=100%>
	<tr >
	<td><i id="contact_icons" class="far fa-address-book"></i><br/></td>
	<td><i id="contact_icons" class="fas fa-mobile-alt"></i><br/></td>
	<td><i id="contact_icons" class="far fa-envelope"></i><br/></td>
	<td><i id="contact_icons" class="far fa-clock"></i><br/></td>
	</tr>
	
	<tr >
	<td class="contacting_Options">Address<br/></td>
	<td class="contacting_Options">Contact Number<br/></td>
	<td class="contacting_Options">Email Address<br/></td>
	<td class="contacting_Options">Timing</td>
	</tr>
	
	<tr >
	<td class="contactUs_Details">28, Annai Nagar, <br/>Chennai - 600102.<br/></td>
	<td class="contactUs_Details">+91 9876543210<br/></td>
	<td class="contactUs_Details">beautycare@gmail.com<br/></td>
	<td class="contactUs_Details">10:00 am to 7:00 pm<br/></td>
	</tr>
	
	
	</table>
	</center>
<%@ include file="footer.jsp" %>
</body>
</html>