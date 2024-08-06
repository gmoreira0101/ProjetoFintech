<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="styles/cadastro.css">
</head>
<body>

<div class="container" align="center">
    <h1 class="titulo">Novo registro</h1>
    <div class="formulario">
        <form id="formCadastro" method="post" onsubmit="return redirecionar()">
            <div class="row">
                <div class="col-sm">
                    <div class="input-container">
                        <input type="text" placeholder="Título" id="titulo" name="titulo" required>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="input-container">
                        <select name="tipo_gasto" id="tipo_gasto" required>
                            <option value="" selected disabled>Selecionar destino</option>
                            <option value="cadastroDespesas.jsp">Despesa</option>
                            <option value="cadastroGanhosExtras.jsp">Ganho extra</option>
                            <option value="cadastroInvestimento.jsp">Investimento</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row espaco-top">
                <div class="col">
                    <div class="input-container">
                        <input type="text" placeholder="Valor" id="valor" name="valor" required>
                    </div>
                </div>
            </div>

            <div class="row espaco-top" align="center">
                <div class="col">
                    <input type="submit" value="Cadastrar" id="btn-cadastrar">
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    function redirecionar() {
        var tipoGasto = document.getElementById("tipo_gasto").value;
        if (tipoGasto !== "") {
            document.getElementById("formCadastro").action = tipoGasto;
            return true;
        } else {
            alert("Por favor, selecione um destino válido.");
            return false;
        }
    }
</script>
</body>
</html>
