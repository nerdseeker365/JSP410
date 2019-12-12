<%@page  import="java.sql.*"  errorPage="error.jsp"%>

<%
     Connection con=null;
     PreparedStatement ps1=null,ps2=null; 
     ResultSet rs=null;
        ServletConfig cg=null;
        String driver=null,url=null,dbuser=null,dbpwd=null;
        
      //get Jsp Init Parameter values
        driver=config.getInitParameter("driver");
        url=config.getInitParameter("url");
        dbuser=config.getInitParameter("dbuser");
        dbpwd=config.getInitParameter("dbpwd");
        //register JDBC driver
        Class.forName(driver);
        //Establish the connection
        con=DriverManager.getConnection(url,dbuser,dbpwd);
        //create PreparedStatement objects
        ps1=con.prepareStatement("INSERT INTO STUDENT VALUES(SNO_SEQ.NEXTVAL,?,?)");
        ps2=con.prepareStatement("SELECT SNO,SNAME,SADD FROM STUDENT");
      //read form data
      String name=null,addrs=null;
      String pval=null;
      int count=0;
      ResultSetMetaData rsmd=null;
      name=request.getParameter("sname");
      addrs=request.getParameter("sadd");
      //read s1 request param value
      pval=request.getParameter("s1");
      if(pval.equalsIgnoreCase("register")){
         //set values to Query params
          ps1.setString(1,name);
          ps1.setString(2,addrs);
          //execute the Query
          count=ps1.executeUpdate();
          if(count==0){ %>
                <h1 style='color:red;text-align:center'>Registration failed </h1>
             <% } 
              else{
             %>
                <h1 style='color:green;text-align:center'>Registration Succeded </h1>
             <% }
      }//if
      else{
          //execute SELECT SQL Query
           rs=ps2.executeQuery();
           //get ResultSetMetaDAta object
           rsmd=rs.getMetaData();
           //get and print col names
       %>
          <table border="1"  width="100" height="200">
            <tr>
          <%
             for(int i=1;i<=rsmd.getColumnCount();++i){  %>
                  <th><%=rsmd.getColumnLabel(i)%> </th>
        <%  }
           %>
          </tr>
          <%
            while(rs.next()){  %>
               <tr>
                  <%
                    for(int i=1;i<=rsmd.getColumnCount();++i){  %>
                       <td><%=rs.getString(i) %> </td>
                   <% } %> 
                   </tr>
            <%}
            }//else
           %>
           </table>
           <br><br>
           <a href="register.html">home</a>
           
  <%
            //close jdbc objs
            try{
               if(rs!=null)
               rs.close();
            }
            catch(SQLException se){
               se.printStackTrace();
             }
             
              try{
               if(ps1!=null)
               ps1.close();
            }
            catch(SQLException se){
               se.printStackTrace();
             }
             
                try{
               if(ps2!=null)
               ps2.close();
            }
            catch(SQLException se){
               se.printStackTrace();
             }
             
            try{
             if(con!=null)
               con.close();
            }
            catch(SQLException se){
               se.printStackTrace();
             }
     %>
  
  
           
      
      
  
  