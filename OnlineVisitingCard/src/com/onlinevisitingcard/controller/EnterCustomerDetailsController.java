package com.onlinevisitingcard.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.onlinevisitingcard.dao.EnterCustomerDetailsDao;
import com.onlinevisitingcard.dao.EnterCustomerDetailsImpl;
import com.onlinevisitingcard.entity.EnterCustomerDetails;

public class EnterCustomerDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	EnterCustomerDetailsDao entercustomerdetailsdao=null;

       
   
    public EnterCustomerDetailsController() {
        entercustomerdetailsdao=new EnterCustomerDetailsImpl();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String mobileno=request.getParameter("mobileno");
		String company=request.getParameter("company");
		String copies=request.getParameter("copies");
		String website=request.getParameter("website");
		String work=request.getParameter("work");
		String height=request.getParameter("height");
		String weight=request.getParameter("weight");
		String age=request.getParameter("age");

		EnterCustomerDetails e=new EnterCustomerDetails();
		e.setName(name);
		e.setEmail(email);
		e.setAddress(address);
		e.setMobileno(mobileno);
		e.setCompany(company);
		e.setCopies(copies);
		e.setWebsite(website);
		e.setWork(work);
		e.setHeight(height);
		e.setWeight(weight);
		e.setAge(age);
		
		entercustomerdetailsdao.save(e);
		RequestDispatcher dispatcher=request.getRequestDispatcher("EnterCustomerDetails.jsp");
		dispatcher.forward(request,response);
		
	}
	

}
