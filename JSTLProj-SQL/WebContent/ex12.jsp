<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- Create DataSource -->
<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
                                     url="jdbc:oracle:thin:@localhost:1521:xe"
                                     user="system"
                                     password="manager"/>
<!-- Execute Non-Select SQL Query -->                            
<sql:update var="count" dataSource="${ds}"  sql="UPDATE EMP SET SAL=SAL+?  WHERE JOB=?">
   <sql:param>1000</sql:param>
   <sql:param value="SALESMAN"/>
</sql:update>        
<b> no.of records that are update:: ${count}</b> 
                                      
                                     