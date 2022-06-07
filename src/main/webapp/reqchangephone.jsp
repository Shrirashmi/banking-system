<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: silver">
	<%if(session.getAttribute("activeaccountHolder")!=null){ %>
	<%@include file="navbar.jsp" %> <br><br>
	<h1 style="font-size: 20px">Enter your new mobile number</h1>
	<form action="requestToChangePhone">
		Phone:<input type="number" name="phone">
		<input type="submit" name="Request">
	</form>
	<%}else{
		response.sendRedirect("accountholderlogin.jsp");
	} %>
	
</body>
</html>