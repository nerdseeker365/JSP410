<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- create or Locate Service class object -->
<jsp:useBean id="rotator" class="com.nt.rotator.Rotator"  scope="application"/>
<%
     response.setHeader("refresh","2");
     rotator.nextAdvertisement();
 %>
<!-- render the advertisement as graphical hyperlink -->
<a href="<jsp:getProperty name="rotator" property="link"/>">
    <img src="<jsp:getProperty name="rotator" property="image"/>"  width="800" height="200"/>
</a>
<br><br>
  Here the rest of page code comes.....
 
 

    
