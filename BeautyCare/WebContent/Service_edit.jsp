<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<% String Service_Name=request.getParameter("servname");
   String Cost=request.getParameter("cost");
     session=request.getSession();
	session.setAttribute("serviceName", Service_Name);
	session.setAttribute("cost",Cost);%>
   <center>
	   <form class="admin_add_form" action="Edit_Service" method="post">
		   <label class="label_arrange">Service Name</label><br><input class="add_input" type="text" name="serv_name" value=<%=Service_Name %>><br><br>
		   <label class="label_arrange">Cost</label><br><input class="add_input" type="text" name="cost" value=<%=Cost%>><br><br>
		   <span style="color:#0a3d62; text-shadow:2px 1px yellow; font-size:30px;"> ${acknowledge}</span><br>
		   <input class="click_add"  type="submit" value="UPDATE" name="action">
			<input class="click_home" type="submit" value="DELETE" name="action"><br>
	   </form>
   </center>
</body>
</html>