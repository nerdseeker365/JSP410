
<% 
    //read form data
    String name=request.getParameter("iname");
    float price=Float.parseFloat(request.getParameter("iprice"));
    int qty=Integer.parseInt(request.getParameter("iqty"));
    //calculate Bill Amount
    float billAmt=price*qty;
     if(billAmt<50000){ %>
              <h2 style='color:red;text-align:center'> Bill Details  </h2>
           <b>Item name ::  <%=name %></b> <br>
           <b> Item Price ::  <%=price %></b> <br>
           <b> Item Qty ::  <%=qty %></b> <br>
           <b><i>Bill Amount ::<%=billAmt %></i></b> <br>
           <a href='input.html'>home</a>
    <%}
       else{  %>
            <jsp:forward page="discount.jsp">
                 <jsp:param name="bAmt"  value="<%= billAmt%>"/>
            </jsp:forward>
  <%      }
         %> 
         
                   
         

