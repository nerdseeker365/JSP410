<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"  import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<b> Traditional for Loop </b><br>
  <c:forEach var="i" begin="1"  end="10"  step="1">
        2 * ${i} =  ${2*i} <br>
 </c:forEach>
 <b> Enhanced for Loop </b><br>
 <jsp:scriptlet>
     String names[]=new String[]{"raja","rani","jani","phani"};
     request.setAttribute("namesList", names);
   <![CDATA[  
     Set<String> courses=new HashSet();
     courses.add("java"); courses.add(".net"); courses.add("php");
     courses.add("phyton"); courses.add("hadoop");
     session.setAttribute("coursesSet",courses);
     ]]>
 </jsp:scriptlet>
 <br> names are  <br>
 <c:forEach var="nam" items="${namesList}">
      ${nam } <br>
 </c:forEach>
 <br> courses are  <br>
 <c:forEach var="crs" items="${coursesSet}">
      ${crs } <br>
 </c:forEach>
 
 
 