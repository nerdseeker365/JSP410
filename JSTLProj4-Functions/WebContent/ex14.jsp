<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"   prefix="fn"%>
 <c:set  var="msg"  value="hello how are u?"/>
   Value ::  ${msg}  <br>
   UpperCase ::  ${fn:toUpperCase(msg) } <br>
   LowerCase ::  ${fn:toLowerCase(msg) } <br>
   subString ::  ${fn:substring(msg,0,5) } <br>
   Contains hello? ::  ${fn:contains(msg,"hello") } <br>
   length ::  ${fn:length(msg) } <br>
   StartsWith ::  ${fn:startsWith(msg,"hello") }
   
   
 
    
