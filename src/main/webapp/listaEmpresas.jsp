<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.aula.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Tag Lib</title>
</head>
<body>

	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso
	</c:if>
	
	Lista de empresas: <br />
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> </li>
			<a href="/gerenciador/mostraEmpresa?id=${empresa.id}">Edita</a>
			<a href="/gerenciador/removeEmpresa?id=${empresa.id}">Remove</a>
		</c:forEach>
	</ul>

</body>
</html>