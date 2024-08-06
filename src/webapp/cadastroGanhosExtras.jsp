<%@page import="Funcionalidades.Cadastros"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="Funcionalidades.GanhosExtras" %>
<%@ page import="Funcionalidades.GanhosExtrasDAO" %>
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
	
	GanhosExtras ganhoExtra = new GanhosExtras(titulo, valor, idUsuario);
	GanhosExtrasDAO ganhoExtraDAO = new GanhosExtrasDAO();
	ganhoExtraDAO.cadastrarGanho(ganhoExtra);
%>
<jsp:forward page="menuPrincipal.jsp"/>
</body>
</html>