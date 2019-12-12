

<%! public void jspInit(){
   ServletConfig cg=null;
   ServletContext sc=null;
 //get Access to ServletConfig,ServletContext objs
     cg=getServletConfig();
     sc=getServletContext();
    String val1=cg.getInitParameter("p1");
    String val2=sc.getInitParameter("p2");
    System.out.println(val1+"   "+val2);
   }%>
   hello
   