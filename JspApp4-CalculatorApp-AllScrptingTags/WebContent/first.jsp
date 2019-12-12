<%! public int sum(int x,int y){
           return x+y;
           } %>
<%! public int sub(int x,int y){
           return x-y;
           } %>
<%! public int mul(int x,int y){
           return x*y;
           } %>            
<%! public float div(int x,int y){
           return (float)x/y;
           } %>                      
 <h1 style="color:red;text-align:center">Welcome to  Jsp  </h1>
 <br>
   date and time  :: <%=new java.util.Date() %>               
   <%
       int a=10;
       int b=20;
    %>
     <br>
       Sum  :: <%=sum(a,b) %> <br>
       Sub ::  <%=sub(a,b) %> <br>
       Mul ::   <%=mul(a,b) %> <br>    
       Div  ::   <%=div(a,b) %> <br>
       
                      