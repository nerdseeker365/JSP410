<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>


<c:catch  var="e">
   <jsp:scriptlet>
       java.util.Date d=null;
       int year=d.getYear();
       out.println(year);
   </jsp:scriptlet>   
 </c:catch>
  Problem is  ${e}
  
  <br> <br>
   <c:url var="googleUrl"  value="https://google.co.in"/>
   <a href="${googleUrl}">go to Google</a>


    
