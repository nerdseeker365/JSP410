<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>
 
   <c:if test="${!empty param.uname}">
       uname req value ::  <c:out value="${param.uname}"/> <br>
       uname req value ::   ${param.uname} <br>
   </c:if>
      
     
