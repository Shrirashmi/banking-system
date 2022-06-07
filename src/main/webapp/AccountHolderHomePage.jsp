<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%if(session.getAttribute("activeaccountHolder")!=null){ %>
    <%@include file="navbar.jsp" %><br><br>
	<h1 style="background: gray; font-size: 40px">Welcome AccountHolder</h1>
	<a href="deposit.jsp" style="font-size: 30px ; background-color: white;">Deposit</a> <br> <br>
	<a href="viewmini.jsp" style="font-size: 30px ; background-color: white;">View Mini Statement</a> <br> <br>
	<a href="viewaccountholderdetails" style="font-size: 30px ; background-color: white;">view Account Details</a> <br> <br>
	<a href="reqchangephone.jsp" style="font-size: 30px ; background-color: white;">Request To change Mobile Number</a> <br> <br>
	<a href="reuqestChequeBook" style="font-size: 30px ; background-color: white;">Request For ChequeBook</a> <br> <br>
	<a href="" style="font-size: 30px ; background-color: white;">Trace Service Request</a> <br> <br>
	<a href="fundtransfer.jsp" style="font-size: 30px ; background-color: white;">Fund Transfer</a> <br> <br>
	<a href="reqchangepassword.jsp" style="font-size: 30px ; background-color: white;">Change password</a> <br> <br>
	<%}else{
		response.sendRedirect("accountholderlogin.jsp");
	} %>
</body>
</html>