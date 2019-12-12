
<b> from B.jsp</b> <br>
<!-- read and display pageContext attribute values  -->
   attr1 value (pageScope) :: <%=pageContext.getAttribute("attr1",pageContext.PAGE_SCOPE) %> <br>
   attr2 value (requestScope) :: <%=pageContext.getAttribute("attr2",pageContext.REQUEST_SCOPE) %> <br>
   attr3 value (sessionScope) :: <%=pageContext.getAttribute("attr3",pageContext.SESSION_SCOPE) %> <br>
   attr4 value (applicationScope) :: <%=pageContext.getAttribute("attr4",pageContext.APPLICATION_SCOPE) %> <br>
<!-- Forward to C.jsp -->
<jsp:forward page="C.jsp"/>
   