 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
 <head>
   <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <!--Stylesheets  -->
    <link href="//fonts.googleapis.com/css?family=Pacifico%7CLato:400,100,100italic,300,300italic,700,400italic,900,700italic,900italic%7CMontserrat:400,700" rel="stylesheet" type="text/css">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" ><!-- versione del bootstrap.css remota -->
<!-- Bootsrap utiliizza librereia jQuery per far funzionare il suo java script, quindi dobiamo collegare anche questa biblioteca alla nostra pagina ma sempre prima di bootstrap.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--  <link rel="stylesheet" href="css/bootstrap.css"> -->
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/fother.css">
	
    <script src="js/main.js"></script> 

	

    </head>

<body background="images/sfondoAbb1.jpg"> 

	
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
			<ul class="nav navbar-nav">
				<li class="active">
				<a href="http://localhost:8080/pr">Home <span class="sr-only">(current)</span></a></li>
				<li><a href="http://localhost:8080/pr/doveSiamo.html">Dove siamo</a></li>
				<li><a href="http://localhost:8080/pr/abb.html">Abbigliamento</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Login<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="http://localhost:8080/pr/login.html"><span
						class="glyphicon glyphicon-log-in"></span> Amministratore</a></li>
						
						<li><a href="http://localhost:8080/pr/loginUtente.html"><span
						class="glyphicon glyphicon-log-in"></span> Utente</a></li>
					</ul>
				</li>
				<li><a href="http://localhost:8080/pr/gestioneStudenti/iscriviStudenti.html">Registrati</a></li>
			</ul>
		</div>
	
	</div>
</nav>

	<c:if test="${clienteRegistrato != null}">
			</c:if>
	<header>
		<h1>Ecco i tuoi dati: </h1>
	</header>
	<table class="table">
		<tr class="success">
			<th>
				Email
			</th>
			<th>
				Password
			</th>
			
		</tr>
		<c:set var = "cont" scope = "request" value ="${0}" />
		<c:forEach items="${emailRichiesta}" var="emailRichiesta">
		 		<td>
					${emailRichiesta}
			
		</c:forEach>
		
		<c:forEach items="${password}" var="password">
		 		<td>
					${password}
		</c:forEach>
		</table>

</body>
</html>