
<%
   //read req param values
   float billAmt=Float.parseFloat(request.getParameter("bAmt"));
   // calculate discount amount
   float discount=billAmt*0.1f;
   float finalAmt=billAmt-discount;
%>
    <!-- Bill Details... -->
      <h2 style='color:red;text-align:center'> Bill Details  </h2>
      item name ::  <%=request.getParameter("iname") %> <br>
      item Price ::  <%=request.getParameter("iprice") %> <br>
      item Qty ::  <%=request.getParameter("iqty") %> <br>
      Bill Amount ::  <%=billAmt %> <br>
      Discount amount :: <%=discount %> <br>
      Final Bill Amount ::   <%=finalAmt %><br>
<br><br>      
  <a href='input.html'>home</a>

      