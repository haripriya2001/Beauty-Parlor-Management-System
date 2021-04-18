<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="style.css">
</head>
<body bgcolor="#fad390">
<%@ include file="header.jsp" %>
<center>
<div id="formbg-admin">
  			<form action="Admin_Authentication" method="post">
			  	<div class="title">
					 Admin
				 </div>
                <label class="label">User Name</label>
	  			<input type="text" class="input" placeholder="Enter User Name" name="UserName" required>
			  	<label class="label">Password</label>
			    <input type="password" class="input" placeholder="Enter Your Password" name="Password" required>
			    <span style="color:#0a3d62; text-shadow:2px 1px yellow; font-size:20px;"> ${error}</span>
			    <input class="click" type="submit" value="Sign In">
			  </form>
</div>
</center>
			    
<%@ include file="footer.jsp" %>


</body>
</html>