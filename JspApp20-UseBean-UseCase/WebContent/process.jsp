<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- create Or Locate EmployeeDTO class object -->    
<jsp:useBean id="dto"  class="com.nt.dto.EmployeeDTO" scope="request"/>
<!-- Write form data to DTO class object -->
<jsp:setProperty property="*" name="dto"/>
<!-- Create Service class object -->
<jsp:useBean id="empService" class="com.nt.service.EmployeeServiceImpl"  scope="application"/>

 <%
      empService.generatePaySlip(dto);
  %>
  
  <!-- Display results -->
  <h1 style="color:red;text-align:center"> Employee Details Info </h1>
  Emp number :: <%=dto.getEno() %> <br>
  Emp name  ::  <%=dto.getEname() %> <br>
  Emp Desg  ::  <%=dto.getDesg() %> <br>
  <b>Emp Basic Salary ::  <%=dto.getBasicSalary() %> <br> </b>
  <b>Emp Gross Salary ::  <%=dto.getGrossSalary() %> <br> </b>
  <b>Emp Net Salary ::  <%=dto.getNetSalary() %> <br> </b>
  
  
  



    
