package com.onlinevisitingcard.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.onlinevisitingcard.dao.LoginDao;
import com.onlinevisitingcard.dao.LoginDaoImpl;
import com.onlinevisitingcard.entity.Login;


public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	LoginDao loginDao=null;
	public LoginController() {
		loginDao=new LoginDaoImpl();
	}
	
	
	@Override
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Login login=new Login();
		login.setEmail(req.getParameter("email"));
		login.setPassword(req.getParameter("password"));
		String status=loginDao.authenticate(login);
		
		if(status.equals("true")) {
			
			resp.sendRedirect("EnterCustomerDetails.jsp");
		}
		if(status.equals("false")) {
			resp.sendRedirect("index.jsp? try again");
			
		}
		if(status.equals("error")) {
			resp.sendRedirect("index.jsp?status=wrong email or password");
		}
		
	
	}
}