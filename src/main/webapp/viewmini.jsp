<%@page import="com.ty.banking_system.service.FundTransferService"%>
<%@page import="java.util.List"%>
<%@page import="com.ty.banking_system.dto.FundTransfer"%>
<%@page import="com.ty.banking_system.dto.AccountHolder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: silver;">
<%@include file="navbar.jsp"%>
<h1 style="background-color: gray">MINI STATEMENT</h1>
	<table border="3px" cellpadding=20px>
		<tr>
			<th>ID</th>
			<th>AccNumber</th>
			<th>Amount</th>
			<th>BankName</th>
			<th>ifscCode</th>
		</tr>
	<%AccountHolder accountHolder =(AccountHolder) session.getAttribute("activeaccountHolder");
	FundTransferService fundTransferService = new FundTransferService();
	List<FundTransfer> fundTransfers = fundTransferService.getFundTransfersById(accountHolder.getId());
	for (FundTransfer fundTransfer : fundTransfers){
	%>
		<tr>
			<td><%=fundTransfer.getId()%></td>
			<td><%=fundTransfer.getAccNumber()%></td>
			<td><%=fundTransfer.getAmount()%></td>
			<td><%=fundTransfer.getBankName()%></td>
			<td><%=fundTransfer.getIfscCode()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<br> <br>
	<a href="AccountHolderHomePage.jsp">Click Here</a>
	
</body>
</html>