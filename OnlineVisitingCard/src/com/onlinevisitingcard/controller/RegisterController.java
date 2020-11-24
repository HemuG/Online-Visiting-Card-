package com.onlinevisitingcard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinevisitingcard.dao.RegisterDao;
import com.onlinevisitingcard.dao.RegisterDaoImpl;
import com.onlinevisitingcard.entity.Register;

public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RegisterDao registerDao=null;
  
    public RegisterController() {
      registerDao=new RegisterDaoImpl();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password= request.getParameter("password");
		Register r=new Register();
		r.setEmail(email);
		r.setName(name);
		r.setPassword(password);
		registerDao.save(r);
		RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

}
