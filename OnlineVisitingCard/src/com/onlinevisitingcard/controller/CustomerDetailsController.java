package com.onlinevisitingcard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

import com.onlinevisitingcard.dao.CustomerDetailsDao;
import com.onlinevisitingcard.dao.CustomerDetailsDaoImpl;
import com.onlinevisitingcard.entity.CustomerDetails;

public class CustomerDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerDetailsDao customerdetaildao=null;
	public CustomerDetailsController() {
		customerdetaildao=new CustomerDetailsDaoImpl();
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<CustomerDetails> list=customerdetaildao.get();
		req.setAttribute("list", list);
		RequestDispatcher dispatcher=req.getRequestDispatcher("/views/CustomerDetails.jsp");
		dispatcher.forward(req, resp);
	}
	
	
}
