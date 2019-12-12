

<b>From A.jsp</b>
<% float price=9555.44f; %>
<jsp:forward page="B.jsp">
   <jsp:param value="CRJ" name="bkName"/>
   <jsp:param value="<%=price %>" name="bkPrice"/>
</jsp:forward>