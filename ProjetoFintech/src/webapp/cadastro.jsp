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
<h1 class="titulo">Cadastro</h1>

	<form action="cadastroPessoa.jsp" method="post">
	<div class="formulario">
		<div class="row espaco-top">
			<h3>Dados pessoais</h3>
		</div>
		<div class="row">
			<div class="col-sm">
				<div class="input-container">
					<input type="text" placeholder="Nome completo" id="nome" name="nome" onkeyup="isFormValid()">
				</div>
			</div>
			<div class="col-sm" >
				<div class="input-container">
					<input type="text" placeholder="CPF" id="cpf" name="cpf" onkeyup="isFormValid()">
				</div>
			</div>
		</div>
		<div class="row espaco-top">
			<div class="col-sm">
				<div class="input-container">
					<input type="date" placeholder="dt_aniversario" id="dt_aniversario" name="dt_aniversario" onkeyup="isFormValid()">
				</div>
			</div>

			<div class="col-sm">
				<div class="input-container">
					<input type="number" placeholder="salario" id="salario" name="salario" onkeyup="isFormValid()">
				</div>
			</div>
		</div>
		<div class="row espaco-top">
			<h3>Dados de login</h3>
		</div>
		<div class="row">
			<div class="col-sm">
				<div class="input-container">
					<input type="email" placeholder="email" id="email" name="email" onkeyup="isFormValid()">
				</div>
			</div>
		</div>
		<div class="row espaco-top">
			<div class="col-sm">
				<div class="input-container">
					<input type="text" placeholder="Senha" id="password" name="password" onkeyup="isFormValid()">
				</div>
			</div>
		</div>
	</div>
	<div class="row" align="center">
		<div class="col espaco-top" align="center">
			<input type="submit" value="Cadastrar" id="btn-cadastrar" disabled>
		</div>
	</div>
	</form>
</div>
</body>
<script src="scripts/cadastro.js"></script>
</html>