<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<fmt:setLocale value="en-ZH"/>
 <fmt:formatNumber  type="currency" var="fnumber"  value="10000000"  />
 formatted number :: ${fnumber}
 <br>
 <jsp:useBean  id="dt"  class="java.util.Date"/>
 <fmt:formatDate value="${dt}"  var="fdt"/>
 formatted date :: ${fdt}
 
 <fmt:setBundle basename="com.nt.commons.App"/>
 <fmt:message var="fmsg"  key="my.wish"/>
 <br> formatted message :: ${fmsg}
 
 