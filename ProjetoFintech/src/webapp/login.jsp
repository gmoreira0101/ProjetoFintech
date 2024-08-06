<%@page import="Funcionalidades.Investimento"%>
<%@page import="Funcionalidades.GanhosExtras"%>
<%@page import="Funcionalidades.Cadastros"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="Usuario.Usuario" %>
<%@ page import="Usuario.UsuarioDAO" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String user = "";
    String password = "";

    if(request.getParameter("user") != null){
        user = request.getParameter("user");
    }
    if(request.getParameter("password") != null){
        password = request.getParameter("password");
    }

    UsuarioDAO usuarioDAO = new UsuarioDAO();
    boolean logou = usuarioDAO.Login(user, password);

    if(logou){
        Usuario usuario = usuarioDAO.getUsuario(user, password);
        session.setAttribute("usuario", usuario);
        response.sendRedirect("menuPrincipal.jsp");
    }
    else{
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>