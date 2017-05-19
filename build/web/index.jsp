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
        
        <style type="text/css">
            html, body {
                height: 100%;
                overflow: auto;
            }

            iframe {
                border: 0; 
                position:fixed; 
                top:0; 
                left:0; 
                right:0; 
                bottom:0; 
                width:100%; 
                height:100%;
            }
        </style>
        <title>Sistema de Pugs</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <div class="content">
            <iframe id="frame" name="frame" src="cadastrar.jsp"></iframe>
        </div>
    </body>
</html>