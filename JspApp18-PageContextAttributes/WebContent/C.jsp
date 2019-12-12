
<b> from C.jsp</b> <br>
<!-- read and display pageContext attribute values  -->
   attr1 value (pageScope) :: <%=pageContext.findAttribute("attr1") %> <br>
   attr2 value (requestScope) :: <%=pageContext.findAttribute("attr2") %> <br>
   attr3 value (sessionScope) :: <%=pageContext.findAttribute("attr3") %> <br>
   attr4 value (applicationScope) :: <%=pageContext.findAttribute("attr4") %> <br>
   