<%@page import="Funcionalidades.Investimento"%>
<%@page import="Funcionalidades.GanhosExtras"%>
<%@page import="Funcionalidades.Cadastros"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="Funcionalidades.Despesas" %>
<%@ page import="Funcionalidades.DespesasDAO" %>
<%@ page import="Usuario.Usuario" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String titulo = "";
	double valor = 0;
	int idUsuario = 0;
	
	if(request.getParameter("titulo") != null){
		titulo = request.getParameter("titulo");
	}
	if(request.getParameter("valor") != null){
		valor = Double.parseDouble(request.getParameter("valor"));
	}

        Usuario usuario = (Usuario) session.getAttribute("usuario");
        idUsuario = usuario.getIdUsuario();

		Despesas despesa = new Despesas(titulo, valor, idUsuario);
		DespesasDAO despesaDAO = new DespesasDAO();
        despesaDAO.cadastrar(despesa);
%>
        <jsp:forward page="menuPrincipal.jsp"/>
</body>
</html>