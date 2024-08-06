<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="styles/index.css">

<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<form action="login.jsp" method="get">
    <div class="container" style="margin-top: 250px">
        <div class="row" align="center">
            <div class="col-sm">
                <input type="text" placeholder="User" name="user" id="user" onkeyup="isFormValid()">
            </div>
                <div class="col-sm">
                <input type="password" placeholder="Senha" name="password" id="password" onkeyup="isFormValid()">
                </div>
        </div>
        <div class="row">
            <div class="col espaco-top" align="center">
                <input type="submit" value="Entrar" id="btn-entrar" disabled>
            </div>
        </div>
        <div class="row">
            <div class="col espaco-top" align="center">
                <a href="cadastro.jsp" class="btn_entrar">Cadastrar</a>
            </div>
        </div>
    </div>

</form>
</body>
<script src="scripts/index.js"></script>
</html>