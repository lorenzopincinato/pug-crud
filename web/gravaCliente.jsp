<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <input type="submit" value="text">
        
        <c:catch var="ex">
            <sql:transaction dataSource="${ds}">
                <sql:update var="gravaCli">
                    INSERT INTO Testinho values(?)
                    
                    <sql:param value="${param['txtCampo']}"/>
                </sql:update>
            </sql:transaction>
        </c:catch>
        <h1>
            <c:out value="${ex}" default="Gravação executada com sucesso"/>            
        </h1>
    </body>
</html>
