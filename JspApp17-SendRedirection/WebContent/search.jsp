
<!-- read form data -->
<%
     String ss=request.getParameter("ss");
     //perform SendRedirection
     response.sendRedirect("https://www.google.com/search?q="+ss);
%>

