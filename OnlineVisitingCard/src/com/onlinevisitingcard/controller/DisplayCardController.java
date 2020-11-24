package com.onlinevisitingcard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinevisitingcard.dao.DiaplayCardDaoImpl;
import com.onlinevisitingcard.dao.DisplayCardDao;
import com.onlinevisitingcard.entity.DisplayCard;

public class DisplayCardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DisplayCardDao displaycarddao=null;
       
    public DisplayCardController() {
    	displaycarddao=new DiaplayCardDaoImpl();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<DisplayCard> list=displaycarddao.get();
		request.setAttribute("list", list);
		String card=request.getParameter("card");
		switch (card) {
		case "one":
			RequestDispatcher dispatcher=request.getRequestDispatcher("/views/h.jsp");
			dispatcher.forward(request, response);
			break;
		case "two":
			RequestDispatcher dispatcher1=request.getRequestDispatcher("/views/d33.jsp");
			dispatcher1.forward(request, response);
			break;
		case "three":
			RequestDispatcher dispatcher2=request.getRequestDispatcher("/views/d66.jsp");
			dispatcher2.forward(request, response);
			break;
		case "four":
			RequestDispatcher dispatcher3=request.getRequestDispatcher("/views/d22.jsp");
			dispatcher3.forward(request, response);
			break;
		case "five":
			RequestDispatcher dispatcher5=request.getRequestDispatcher("/views/d77.jsp");
			dispatcher5.forward(request, response);
			break;

		default:
			RequestDispatcher dispatcher4=request.getRequestDispatcher("/views/getback.jsp");
			dispatcher4.forward(request, response);
			break;
		}
		
	}


}
