<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Consulta</title>

        <link href="css/style.css" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="panel panel-default panel-center panel-primary" style="border-color: #6A5A55 !important;">
            <div class="panel-heading" style="background-color: #AD9E99 !important; border-color: #6A5A55 !important; height: 50px;">
                <h3 class="panel-title title-center" style="color: #6A5A55"><b>&nbsp &nbsp Consulta</b></h3>
            </div>
            <form action="execConsultar.jsp" method="post">
                <div class="padding-all">
                    <div class="input-group">
                        <input type="text" class="form-control" name="txtNome" placeholder="Nome" maxlength="21" autocomplete="off" required>
                        <div class="input-group-btn">
                            <input type="text" id="operacao" name="operacao" value="2" hidden="hidden"/><br/>

                            <input type="submit" class="btn btn-default" value="Consultar" name="botao">

                            <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li ><a href="cadastrar.jsp">Cadastrar</a></li>
                                <li class="disabled"><a href="">Consultar</a></li>
                                <li><a href="alterar.jsp">Alterar</a></li>
                                <li><a href="excluir.jsp">Excluir</a></li>
                            </ul>
                        </div>
                    </div>
                    <br>
                    <div class="form-inline">
                        <input type="text" class="form-control" name="txtCor" placeholder="Cor" style="width: 120px" disabled required>
                        <input type="text" class="form-control form-center" name="txtSexo" placeholder="Sexo" style="width: 103px" disabled required>
                        <input type="text" class="form-control form-left" name="txtIdade" placeholder="Idade" style="width: 128px" disabled required>
                        </div>
                </div>
            </form>
            </div>
    </body>
</html>
