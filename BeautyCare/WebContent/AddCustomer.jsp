<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddCustomer</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
</head>
<body bgcolor=#F5FFFA>
<center>
<form class="admin_add_form"action="Add_Customer" method="post" >
			<h1 class="add_title">Add customer</h1>
			<label class="label_arrange">Name</label><br>
      		<input class="add_input" type="text" name="Name" placeholder="Full Name"><br><br>
      		 <label class="label_arrange">Email</label><br>
      		 <input  class="add_input" type="text" name="Email" placeholder="Email id"><br><br>
      		 <label class="label_arrange">Contact Number</label><br>
      		 <input class="add_input" type="text" name="Contact_Number" placeholder="Phone Number"><br><br>
      		 <label class="label_arrange">Gender:</label>
      		 <input type="radio" name="gender" id="male" value="Male"><i class="rad">Male</i>
      		 <input  type="radio" name="gender" id="female" value="Female"><i class="rad">Female</i><br><br>
      		 <input class="click_add"  type="submit" value="ADD" >
		     <input class="click_home" type="button" value="HOME" onclick='location.href="AdminHome.jsp"'><br>
		     <span style="color:#0a3d62; text-shadow:2px 1px yellow; font-size:30px;"> ${acknowledge}</span>
		     </form>
		     </center>
</body>
</html>