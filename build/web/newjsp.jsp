<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <sql:setDataSource var="ds"
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://REGULUS:1433;databasename=BD15158"
                           user="BD15158"
                           password="almondega"
                           scope="session"/>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL TESTE</title>
    </head>
    <body>
        <form action="gravaCliente.jsp" method="post">
            <input type="text" name="txtCampo"/>
            <input accesskey="o" type="submit" name="btn" value="TRAU"/>
        </form>
    </body>
</html>
