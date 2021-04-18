<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
</head>
<body bgcolor=#F5FFFA>
<center>
<form class="admin_add_form"  >
        <h1 class="admin_add_title">Customer Details</h1>
		<input class="admin_add_details" type="button" value="Add Customers" onclick="location.href='AddCustomer.jsp'"><br>
		<input class="admin_add_details" type="button" value="View Customers " onclick='location.href="ViewCustomer.jsp"'> <br>
		<input class="admin_add_details" type="button" value="Home" onclick='location.href="AdminHome.jsp"'><br>
	</form>
	</center>
</body>
</html>