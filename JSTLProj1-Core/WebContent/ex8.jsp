<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>


<c:url var="googleSearch"  value="http://google.co.in/search?q=ameerpet"/>

 <c:redirect url="${googleSearch}"/>