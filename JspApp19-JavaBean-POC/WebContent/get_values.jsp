<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- create /locate Java Bean calss object -->
<jsp:useBean id="st"  class="com.nt.beans.StudentBean"  scope="application"/>
    
<!-- get values from bean properties and display them-->
sno==<jsp:getProperty name="st"  property="sno"  /> <br>
sname==<jsp:getProperty property="sname" name="st" /> <br>
sadd===<jsp:getProperty property="sadd" name="st"  /> <br>
avg ==<jsp:getProperty property="avg" name="st" /> <br>
 <br>
<b> Values are retrieved from bean properties succesfully</b>
