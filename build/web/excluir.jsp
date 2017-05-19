<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Exclusão</title>

        <link href="css/style.css" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="panel panel-default panel-center panel-primary" style="border-color: #6A5A55 !important;">
            <div class="panel-heading" style="background-color: #AD9E99 !important; border-color: #6A5A55 !important; height: 50px;">
                <h3 class="panel-title title-center" style="color: #6A5A55"><b>&nbsp &nbsp Exclusão</b></h3>
            </div>
            <form action="execExcluir.jsp" method="post">
                <div class="padding-all">
                    <div class="input-group">
                        <input type="text" class="form-control" name="txtNome" placeholder="Nome" maxlength="21" autocomplete="off" required>
                        <div class="input-group-btn">
                            <input type="text" id="operacao" name="operacao" value="4" hidden="hidden"/><br/>
                            <input type="submit" class="btn btn-default" value="Excluir" name="botao">

                            <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="cadastrar.jsp">Cadastrar</a></li>
                                <li><a href="consultar.jsp">Consultar</a></li>
                                <li><a href="alterar.jsp">Alterar</a></li>
                                <li class="disabled"><a href="">Excluir</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
