package com.nt.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/testurl")
public class DataServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		//construct data having diff scopes
		req.setAttribute("attr1","val1");
		HttpSession ses=req.getSession();
		ses.setAttribute("attr2","val2");
		ServletContext sc=req.getServletContext();
		sc.setAttribute("attr3","val3");
		
		//forward request to dest jsp page
		RequestDispatcher rd=req.getRequestDispatcher("/el2.jsp");
		rd.forward(req,res);
	}//doGet(-,-)

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
             doGet(req,res);
	}

}
