
<b> from D.jsp</b>  <br>
<!-- read and display pageContext attribute values  -->
   attr1 value (pageScope) :: <%=pageContext.findAttribute("attr1") %> <br>
   attr2 value (requestScope) :: <%=request.getAttribute("attr2") %> <br>
   attr3 value (sessionScope) :: <%=session.getAttribute("attr3") %> <br>
   attr4 value (applicationScope) :: <%=application.getAttribute("attr4") %> <br>
   