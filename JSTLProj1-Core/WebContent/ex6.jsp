<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
 
   <c:set var="msg"  value="hello how are u ?"  scope="request" />
<b> Tokens</b> <br>
  <c:forTokens var="str" items="${msg}" delims="lo">
         ${str}  <br>
  </c:forTokens>
    
