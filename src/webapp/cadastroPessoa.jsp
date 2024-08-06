<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="java.time.LocalDate" %>
<%@ page import="Usuario.Usuario" %>
<%@ page import="Usuario.UsuarioDAO" %>

<meta charset="UTF-8">
<title>Cadastro Pessoa</title>
</head>
<body>
<%

	String nome = "";
	long cpf = 0L;
	double salario = 0;
	String email = "";
	String senha = "";
	LocalDate dataAniversario = LocalDate.now();
	
	if(request.getParameter("nome") != null){
		nome = request.getParameter("nome");
	}
	if(request.getParameter("cpf") != null){
		cpf = Long.parseLong(request.getParameter("cpf"));
	}
	if(request.getParameter("salario") != null){
		salario = Double.parseDouble(request.getParameter("salario"));
	}
	if(request.getParameter("email") != null){
		email = request.getParameter("email");
	}
	if(request.getParameter("password") != null){
		senha = request.getParameter("password");
	}
	if(request.getParameter("dataAniversario") != null){
		dataAniversario = LocalDate.parse(request.getParameter("dataAniversario"));
	}
	
	Usuario usuario = new Usuario(0, nome, cpf , salario, email, senha, dataAniversario);
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	usuarioDAO.cadastrar(usuario);
	
%>
    <jsp:forward page="index.jsp"/>
</body>
</html>