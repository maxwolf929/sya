<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>SELECT Category</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/java"
     user="adminuL5m7Iw"  password="UUFSyEEYL3qe"/>
 
<sql:query dataSource="${snapshot}" var="result">
	SELECT * from categs;
</sql:query>
 
<select>
  <c:forEach var="row" items="${result.rows}">
        <option>
                <c:out value="${row.categs_name}"/>
        </option> 
  </c:forEach>
</select>
</body>
</html>