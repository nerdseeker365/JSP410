<jsp:declaration>
 public int sum(int x,int y){
//      addition
     return x+y;
 }
</jsp:declaration>
<jsp:declaration>           
 public int sub(int x,int y){
          <!--   return x-y;  --> 
           } 
</jsp:declaration>
<!--<jsp:declaration>           
 public int mul(int x,int y){
           return x*y;
           }
</jsp:declaration> -->
<jsp:declaration>            
 public float div(int x,int y){
           return (float)x/y;
           }              
</jsp:declaration>                    
 <!--    <h1 style="color:red;text-align:center">Welcome to  Jsp  </h1> -->
 <br>
   date and time  :: <jsp:expression> new java.util.Date() </jsp:expression>        
   <jsp:scriptlet>
       int a=10;
       int b=20;
    </jsp:scriptlet>
     <br>
       Sum :: <jsp:expression>sum(a,b) </jsp:expression> <br>
       Sub  ::  <jsp:expression>sub(a,b) </jsp:expression> <br>
      <!--   Mul :: <jsp:expression>mul(a,b) </jsp:expression> <br> -->    
       Div  :: <jsp:expression>div(a,b) </jsp:expression><br>
       
                      