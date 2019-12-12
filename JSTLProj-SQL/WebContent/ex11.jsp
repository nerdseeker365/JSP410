<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- Create DataSource -->
<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
                                     url="jdbc:oracle:thin:@localhost:1521:xe"
                                     user="system"
                                     password="manager"/>
 <!-- Send and execute Select SQL Query in DB s/w -->
 <sql:query var="rs" dataSource="${ds}"  sql="SELECT EMPNO,ENAME,JOB FROM EMP"/>
 <!-- Process the ResultSet object -->
 <b>All rows </b><br> 
  <c:forEach var="row"  items="${rs.rows}">
      ${row.empno}  &nbsp;&nbsp;&nbsp;  ${row.ename}  &nbsp;&nbsp;&nbsp; ${row.job } <br> 
  </c:forEach>
 
                                        
                                     


