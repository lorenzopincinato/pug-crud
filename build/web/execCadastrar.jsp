<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Cadastro</title>

        <link href="css/style.css" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="panel panel-default panel-center panel-primary" style="border-color: #6A5A55 !important;">
            <div class="panel-heading" style="background-color: #AD9E99 !important; border-color: #6A5A55 !important; height: 50px;">
                <h3 class="panel-title title-center" style="color: #6A5A55"><b>&nbsp &nbsp Cadastro</b></h3>
            </div>
            <form action="execCadastrar.jsp" method="post">
                <div class="padding-all">
                    <div class="input-group">
                        <input type="text" class="form-control" name="txtNome" placeholder="Nome" maxlength="21" autocomplete="off" required>
                        <div class="input-group-btn">
                            <input type="text" id="operacao" name="operacao" value="1" hidden="hidden"/><br/>
                            <input type="text" name="txtCor" id="txtCor" value="" hidden="hidden" required/>
                            <input type="text" name="txtSexo" id="txtSexo" value="" hidden="hidden" required/>
                            <input type="text" name="txtIdade" id="txtIdade" value="" hidden="hidden" required/>

                            <input type="submit" class="btn btn-default" value="Cadastrar" name="botao">

                            <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li class="disabled"><a href="">Cadastrar</a></li>
                                <li><a href="consultar.jsp">Consultar</a></li>
                                <li><a href="alterar.jsp">Alterar</a></li>
                                <li><a href="excluir.jsp">Excluir</a></li>
                            </ul>
                        </div>
                    </div>
                    <br>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default btn-cor" style="width: 87px; text-align: left">Cor</button>
                        <a class="btn btn-default dropdown-toggle btn-select" data-toggle="dropdown">
                            <span class="caret" style="margin-left: 4px; margin-right: 4px"></span></a>
                            <ul class="dropdown-menu" style="min-width: 119px !important; width: 119px; height: auto; max-height: 200px; overflow-x: hidden;">
                                <li><a href="#">Abricot</a></li>
                                <li><a href="#">Castanho</a></li>
                                <li><a href="#">Prata</a></li>
                                <li><a href="#">Preto</a></li>
                            </ul>
                    </div>
                    <script>
                        $(".dropdown-menu li a").click(function(){
                            var selText = $(this).text();
                            $(this).parents('.btn-group').find('.btn-cor').html(selText);
                            document.getElementById('txtCor').value = selText;
                        });
                    </script>
                    <div class="btn-group btn-center">
                        <button type="button" class="btn btn-default btn-sexo" style="width: 70px; text-align: left">Sexo</button>
                        <a class="btn btn-default dropdown-toggle btn-select" data-toggle="dropdown">
                            <span class="caret" style="margin-left: 4px; margin-right: 4px"></span></a>
                            <ul class="dropdown-menu" style="min-width: 102px !important; width: 102px; height: auto; max-height: 200px; overflow-x: hidden;">
                                <li><a href="#">Femea</a></li>
                                <li><a href="#">Macho</a></li>
                            </ul>
                    </div>
                    <script>
                        $(".dropdown-menu li a").click(function(){
                            var selText = $(this).text();
                            $(this).parents('.btn-group').find('.btn-sexo').html(selText);
                            document.getElementById('txtSexo').value = selText;
                        });
                    </script>
                    <div class="btn-group btn-left">
                        <button type="button" class="btn btn-default btn-idade" style="width: 95px; text-align: left">Idade</button>
                        <a class="btn btn-default dropdown-toggle btn-select" data-toggle="dropdown">
                            <span class="caret" style="margin-left: 4px; margin-right: 4px"></span></a>
                            <ul class="dropdown-menu" style="min-width: 127px !important; width: 127px; height: auto; max-height: 200px; overflow-x: hidden;">
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
            <c:catch var="ex">
                <sql:transaction dataSource="${ds}">
                    <sql:update var="cadastrar">
                        INSERT INTO Pugs values(?, ?, ?, ?)

                        <sql:param value="${param['txtNome']}"/>
                        <sql:param value="${param['txtCor']}"/>
                        <sql:param value="${param['txtSexo']}"/>
                        <sql:param value="${param['txtIdade']}"/>
                    </sql:update>
                </sql:transaction>
            </c:catch>
            <c:choose>
                <c:when test="${(ex == null)}">
                    <div class="alert alert-success fade-in alert-center-1 alert-dismissible">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Sucesso!</strong> O pug <strong>${param['txtNome']}</strong> foi cadastrado.
                    </div>
                </c:when>
                <c:when test="${(ex != null)}">
                    <div class="alert alert-danger fade-in alert-center-1 alert-dismissible">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Erro!</strong> O pug <strong>${param['txtNome']}</strong> já existe.
                    </div> 
                </c:when>
            </c:choose>
        </div>
    </body>
</html>

