<%@page import="nl.captcha.Captcha"%>
<%
// Get Generated Capatcha obj from Session attribute set by StickyCapatchServlet
Captcha captcha=(Captcha)session.getAttribute(Captcha.NAME);
request.setCharacterEncoding("UTF-8");

//get U r Answer
String answer=request.getParameter("answer");

if(captcha.isCorrect(answer))
out.println("<h1>Correct </h1>");

else
	out.println("<h1>Incorrect </h1>");
%>