<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@ page import="Usuario.Usuario" %>
<%@ page import ="Funcionalidades.DespesasDAO" %>
<%@ page import ="Funcionalidades.GanhosExtrasDAO" %>
<%@ page import ="Funcionalidades.InvestimentoDAO" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="styles/menuPrincipal.css">
<meta charset="UTF-8">
<title>menu principal</title>
</head>
<body>
 <%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    String nomeUsuario = usuario.getNomeUsuario();
    Double salario = usuario.getSalario();
    DespesasDAO despesasDAO = new DespesasDAO();
    double gastos = despesasDAO.pegarDespesas(usuario);
    InvestimentoDAO investimentoDAO = new InvestimentoDAO();
    double investimento = investimentoDAO.pegarInvestimentos(usuario);
    GanhosExtrasDAO ganhoExtrasDao = new GanhosExtrasDAO();
    double ganhosExtras = ganhoExtrasDao.pegarGanho(usuario);
 %>

	
<h1>Menu principal</h1>
<a href="cadGasto.jsp" class="btn">Cadastros</a>
<div class="container">
    <div class="formulario">
        <div class="row">
            <div class=col>
                <h3>Bem-vindo, <%= nomeUsuario %></h3>
            </div>
		</div>
		<div class="row" align="center">
			<div class=col>
				<table>
				  <tr>
				    <th>Classificação</th>
				    <th>Valor</th>
				    <th>% do gasto total</th>
				  </tr>
				  <c:forEach var="despesa" items="${despesas}">
        			<tr>
            			<td><c:out value="${despesa.titulo}" /></td>
			            <td><c:out value="${despesa.valor}"/></td>
			            <td><c:out value="${despesa.porcentagem}"/></td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>