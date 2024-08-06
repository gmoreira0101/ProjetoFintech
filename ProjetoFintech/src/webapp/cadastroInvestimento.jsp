<%@page import="Funcionalidades.Cadastros"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="Funcionalidades.Investimento" %>
<%@ page import="Funcionalidades.InvestimentoDAO" %>
<%@ page import="Usuario.Usuario" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String titulo = "";
    double valor = 0;
    int idUsuario = 0;

    if (request.getParameter("titulo") != null) {
        titulo = request.getParameter("titulo");
    }
    if (request.getParameter("valor") != null) {
        valor = Double.parseDouble(request.getParameter("valor"));
    }
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    if (usuario != null) {
        idUsuario = usuario.getIdUsuario();
    }

    if (!titulo.isEmpty() && valor > 0 && idUsuario > 0) {
        Investimento investimento = new Investimento(titulo, valor, idUsuario);
        InvestimentoDAO investimentoDAO = new InvestimentoDAO();
        investimentoDAO.cadastrarInvestimento(investimento);
    }
%>
<jsp:forward page="menuPrincipal.jsp"/>
</body>
</html>	