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
        <input type="submit" value="text"/>
        
        <c:catch var="ex">
            <sql:query var="query" dataSource="${ds}">
                SELECT * FROM Testinho WHERE campo=?

                <sql:param value="${param['txtCampo']}"/>
            </sql:query>
        </c:catch>
        <h1>
            <c:forEach var="valores" items="${query.rows}">
                <h1>
                    ${valores.campo}
                </h1>
            </c:forEach>
        </h1>
    </body>
</html>

