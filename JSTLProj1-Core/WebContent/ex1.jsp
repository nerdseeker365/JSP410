<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<c:set var="msg"  value="hello"  scope="request"/>
value ::   <c:out value="${msg}"  /> <br>
  value ::  ${requestScope.msg } <br>
  value ::  ${msg } <br>
 <c:remove var="msg"   scope="request"/>
 value ::   <c:out value="${msg}"  />
  value ::  ${requestScope.msg } <br>
  value ::  ${msg } <br>
     
