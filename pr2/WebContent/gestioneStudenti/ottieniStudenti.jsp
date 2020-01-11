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
<nav class="navbar navbar-default">
	<div class="container-fluid">
	
		<!-- Brand/logo -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#example-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Alta Sartoria</a>
		</div>
		
		<!-- Collapsible Navbar -->
		<div class="collapse navbar-collapse" id="example-1">

			<li><a href="http://localhost:8080/pr/gestioneStudenti/iscriviStudenti.html">Registrati</a></li>
			<ul class="nav navbar-nav">
				<li class="active">
				<a href="http://localhost:8080/pr">Home <span class="sr-only">(current)</span></a></li>
				<li><a href="http://localhost:8080/pr/doveSiamo.html">Dove siamo</a></li>
				<li><a href="http://localhost:8080/pr/abb.html">Abbigliamento</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			
			<li><a href="http://localhost:8080/pr/gestioneStudenti/iscriviStudenti.html">Registrati</a></li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Login<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="http://localhost:8080/pr/login.html"><span
						class="glyphicon glyphicon-log-in"></span> Amministratore</a></li>
						
						<li><a href="http://localhost:8080/pr/loginUtente.html"><span
						class="glyphicon glyphicon-log-in"></span> Utente</a></li>
					</ul>
				</li>
			</ul>
		</div>
	
	</div>
</nav>
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