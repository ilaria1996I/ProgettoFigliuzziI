 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/common.css" type="text/css" />

<link rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
	<c:if test="${studenteRegistrato != null}">
			</c:if>
	<header>
		<h1>Elenco Clienti</h1>
	</header>
	<table class="table">
		<tr class="success">
			<th>
				Nome
			</th>
			<th>
				Cognome
			</th>
			<th>
				Email
			</th>
			<th>
				Password
			</th>
		</tr>
		<c:set var = "cont" scope = "request" value ="${0}" />
		<c:forEach items="${studenti}" var="studente">
		 	<c:set var = "cont" scope = "request" value ="${cont + 1}" />
			<c:set var = "colore"  scope = "request" value ="warning" />
			<c:if test="${cont % 2 == 0}">
				<c:set var = "colore"  scope = "request" value ="danger" />
			</c:if>
			
			<tr class="${colore}">
				<td>
					${studente.nome}
				</td>
				<td>
					${studente.cognome}
				</td>
				<td>
					${studente.email}
				</td>
				<td>
					${studente.password}
				</td>
			</tr>
		</c:forEach>
		</table>
</body>
</html>