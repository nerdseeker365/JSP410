package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/secondurl")
public class SecondServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	   PrintWriter pw=null;
	   int value=0;
	   int cube=0;
	   //get PrintWriter
	   pw=res.getWriter();
		res.setContentType("text/html");
		//read form data
		value=Integer.parseInt(req.getParameter("t1"));
		//find out cube value
		cube=value*value*value;
		//display cube value
		pw.println("<h1 style='color:red;text-align:center'>(SecondServlet) Cube Value ::"+cube+"</h1>");
		//do not close stream
		
		
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	   doGet(req,res);
	}

}
