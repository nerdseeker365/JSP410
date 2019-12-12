<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x"%>

<c:import url="orders.xml" var="file"/>
<x:parse  doc="${file}" var="doc"/>
<b>All items are </b><br>
 <x:forEach var="ord" select="$doc/orders/order">
        <x:out select="$ord/name"/> &nbsp; &nbsp; <x:out select="$ord/price"/> <br> 
 </x:forEach>
 <br>
 <b>All items are whose price>=500 </b> <br>
 <x:forEach var="ord" select="$doc/orders/order">
        <x:if select="$ord/price>=500">
           <x:out select="$ord/name"/> &nbsp; &nbsp; <x:out select="$ord/price"/> <br>
         </x:if> 
 </x:forEach>
 <br>
 
 
