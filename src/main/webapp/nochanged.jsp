<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%if(session.getAttribute("activeadmin")!=null){ %>
	<h1 style="background: gray;">Number changed successfully</h1>
	<a href="adminhomepage.jsp" style="font-size: 40px ; background-color: white;">Back to homepage</a>
	
		<%}else{
		response.sendRedirect("adminlogin.jsp");
	} %>
</body>
</html>