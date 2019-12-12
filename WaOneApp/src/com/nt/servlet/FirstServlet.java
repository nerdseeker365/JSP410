package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/firsturl")
public class FirstServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw=null;
		int value=0;
		int square=0;
		RequestDispatcher rd=null;
		ServletContext localContext=null,foriegnContext=null;

		//get PrintWriter 
		pw=res.getWriter();
		res.setContentType("text/html");
		//read form data
		value=Integer.parseInt(req.getParameter("t1"));
		//find square value
		square=value*value;
		//display square value
		pw.println("<h1 style='color:red'>(FirstServlet)Square :: "+square+"</h1>");
		//include the response...
		localContext=getServletContext();
		foriegnContext=localContext.getContext("/WaTwoApp");
		//create ReuqestDispatcher object
		rd=foriegnContext.getRequestDispatcher("/secondurl");
		rd.include(req,res);
		//add hyperlink
		pw.println("<a href='input.html'>home</a>");
		//close the stream
		pw.close();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	  doGet(req,res);
	}

}
