<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

uname req param value= ${param.uname }  <br>
sadd req param values= ${paramValues.sadd[0]}, ${paramValues.sadd[1] } <br>

user-agent req header value = ${header['user-agent'] } <br>
accept req header values  = ${headerValues.accept[0]},
                                                   ${headerValues.accept[1]}  <br>
Session id Cookie name ::  ${cookie.JSESSIONID.name } <br>
Session id Cookie value ::  ${cookie.JSESSIONID.value } <br>   
admin  email id :: ${initParam.admin}                                                  
                                                   
                                                   

    
    
