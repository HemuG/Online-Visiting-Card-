package com.onlinevisitingcard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinevisitingcard.dao.AdminDao;
import com.onlinevisitingcard.dao.AdminDaoImpl;
import com.onlinevisitingcard.entity.AdminLogin;

public class AdminController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	AdminDao admindao=null;
	
	public AdminController() {
		admindao=new AdminDaoImpl();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminLogin adminlogin=new AdminLogin();
		adminlogin.setEmail(req.getParameter("email"));
		adminlogin.setPassword(req.getParameter("password"));
		
		String status=admindao.authenticate(adminlogin);
		
		if(status.equals("true")) {
			resp.sendRedirect("CustomerDetailsController");
		}
		if(status.equals("false")) {
			resp.sendRedirect("admin.jsp");
			
			
		}
		if(status.equals("error")) {
			resp.sendRedirect("admin.jsp");
		}
		
	
	}
	

}
