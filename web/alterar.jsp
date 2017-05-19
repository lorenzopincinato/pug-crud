<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Alteração</title>

        <link href="css/style.css" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="panel panel-default panel-center panel-primary" style="border-color: #6A5A55 !important;">
            <div class="panel-heading" style="background-color: #AD9E99 !important; border-color: #6A5A55 !important; height: 50px;">
                <h3 class="panel-title title-center" style="color: #6A5A55"><b>&nbsp &nbsp Alteração</b></h3>
            </div>
            <form action="execAlterar.jsp" method="post">
                <div class="padding-all">
                    <div class="input-group">
                        <input type="text" class="form-control" name="txtNome" id="txtNome" placeholder="Nome" maxlength="21" autocomplete="off" required>
                        <div class="input-group-btn">
                            <input type="text" id="operacao" name="operacao" value="3" hidden="hidden"/><br/>
                            <input type="submit" class="btn btn-default" value="Alterar" name="botao">

                            <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="cadastrar.jsp">Cadastrar</a></li>
                                <li><a href="consultar.jsp">Consultar</a></li>
                                <li class="disabled"><a href="">Alterar</a></li>
                                <li><a href="excluir.jsp">Excluir</a></li>
                            </ul>
                        </div>
                    </div>
                    <br>
                    <input type="text" name="txtIdade" id="txtIdade" value="" hidden="hidden" required/>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default btn-idade" style="width: 359px; text-align: left">Nova Idade</button>

                        <a class="btn btn-default dropdown-toggle btn-select" data-toggle="dropdown">
                            <span class="caret" style="margin-left: 4px; margin-right: 4px"></span></a>
                            <ul class="dropdown-menu" style="min-width: 391px !important; width: 391px; height: auto; max-height: 200px; overflow-x: hidden;">
                                <li><a href="#">0</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">6</a></li>
                                <li><a href="#">7</a></li>
                                <li><a href="#">8</a></li>
                                <li><a href="#">9</a></li>
                                <li><a href="#">10</a></li>
                                <li><a href="#">11</a></li>
                                <li><a href="#">12</a></li>
                                <li><a href="#">13</a></li>
                                <li><a href="#">14</a></li>
                            </ul>
                    </div>
                    <script>
                        $(".dropdown-menu li a").click(function(){
                            var selText = $(this).text();
                            $(this).parents('.btn-group').find('.btn-idade').html(selText + " ano(s)");
                            document.getElementById('txtIdade').value = selText;
                        });
                    </script>
                    <br>
                </div>
            </form>
        </div>
    </body>
</html>
