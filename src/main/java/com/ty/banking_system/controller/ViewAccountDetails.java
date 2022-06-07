package com.ty.banking_system.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ty.banking_system.dto.AccountHolder;
import com.ty.banking_system.service.AccountHolderService;

@WebServlet(value = "/viewaccountholderdetails")
public class ViewAccountDetails extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AccountHolderService accountHolderService = new AccountHolderService();
		HttpSession httpSession = req.getSession();
		AccountHolder accountHolder = (AccountHolder) httpSession.getAttribute("activeaccountHolder");
		if (accountHolder != null) {
			int id = accountHolder.getId();
			AccountHolder accountHolder1 = accountHolderService.getAccountHolderById(id);

			if (accountHolder1 != null) {
				req.setAttribute("accountlist", accountHolder1);
				RequestDispatcher dispatcher = req.getRequestDispatcher("request.jsp");
				dispatcher.forward(req, resp);
			}
			else {
				resp.sendRedirect("AccountHolderHomePage.jsp");
			}
		} else {
			resp.sendRedirect("accountholderlogin.jsp");
		}
	}
}