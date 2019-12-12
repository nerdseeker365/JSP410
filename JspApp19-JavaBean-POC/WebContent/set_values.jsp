<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- create /locate Java Bean calss object -->
<jsp:useBean id="st"  class="com.nt.beans.StudentBean"  scope="application"/>
    
<!-- set values to bean properties -->
  <jsp:setProperty name="st"  property="*"/>
  
<%-- <jsp:setProperty name="st"  property="sno" param="stno"/>
<jsp:setProperty property="sname" name="st"  />
<jsp:setProperty property="sadd" name="st"  param="stadd"/>
<jsp:setProperty property="avg" name="st"  param="stavg"/> --%>
 <br>
<b> Values are set to bean property successfully..</b>
