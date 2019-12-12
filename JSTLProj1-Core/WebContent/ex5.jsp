<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>

all request param names and values::  <br>
  <c:forEach  var="p"  items="${paramValues}">
      name ::  ${p.key} <br>
      values ::
      <c:forEach var="pv" items="${p.value}">
                ${pv} 
      </c:forEach>
      <br>
  </c:forEach>    
  <br><br>
  All request header names and values  <bR>
   <c:forEach var="h" items="${headerValues}">
      name== ${h.key } <br>
      values ===>
      <c:forEach var="hv" items="${h.value}">
            ${hv}
      </c:forEach>
     <br><br>
   </c:forEach>
    
