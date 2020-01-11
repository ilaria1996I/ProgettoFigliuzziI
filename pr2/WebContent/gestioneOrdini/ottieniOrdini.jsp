 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/sarta.css">
<script src="js/sartajs.js"></script>
<link rel="stylesheet" href="css/fother.css">
<title>Benvenuta addetta</title>

<link rel="stylesheet" href="../css/common.css" type="text/css" />

<link rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Alta Sartoria</a>
		</div>

		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="http://localhost:8080/pr">Home</a></li>
				<li><a href="http://localhost:8080/pr/abb.html">Abbigliamento</a></li>
				<li><a href="http://localhost:8080/pr/doveSiamo.html">I nostri punti vendita</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Login<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="http://localhost:8080/pr/login.html"><span
						class="glyphicon glyphicon-log-in"></span> Amministratore</a></li>
						
						<li><a href="http://localhost:8080/pr/loginUtente.html"><span
						class="glyphicon glyphicon-log-in"></span> Utente</a></li>
						<c:if test="${utenteNor != null}">
						Benvenuto ${utenteNor.username};
						<a class="dropdown-item" href="login?logout=true">Logout</a>
						</c:if>	
						
						<c:if test="${utente != null}">
						Benvenuto ${utente.username};
						<a class="dropdown-item" href="login?logout=true">Logout</a>
						<a class="dropdown-item" href="http://localhost:8080/pr/interfacciaSarta.html">Ordini del giorno</a>
						</c:if>
						
					</ul>
					</li>
				<li><a href="http://localhost:8080/pr/gestioneStudenti/iscriviStudenti.html">Sign Up</a></li>
			</ul>
		</div>
	</nav>
<div class="jumbotron text-center">
<h1>STORE ALTA SARTORIA</h1>
<p>I tuoi ordini</p> 
</div>	
			
	<header>
		<h1>Elenco Ordini</h1>
	</header>
	<table class="table">
		<tr class="success">
			<th>
				Codice
			</th>
			<th>
				Azione 1
			</th>
			<th>
				Azione 2
			</th>
			<th>
				Commento
			</th>
			<th>
				Data prevista di consegna
			</th>
		</tr>
		<c:set var = "cont" scope = "request" value ="${0}" />
		<c:forEach items="${ordini}" var="ordine">
		 	<c:set var = "cont" scope = "request" value ="${cont + 1}" />
			<c:set var = "colore"  scope = "request" value ="warning" />
			<c:if test="${cont % 2 == 0}">
				<c:set var = "colore"  scope = "request" value ="danger" />
			</c:if>
			
			<tr class="${colore}">
				<td>
					${ordine.codice}
				</td>
				 <td>
					${ordine.voglioStringere}
				</td>   
				<td>
					${ordine.voglioCheMiCreiIlModello}
				</td>
				<td>
					${ordine.commento}
				</td>
				<td>
					${ordine.data}
				</td>
				<td>
					${ordine.voglioFareUnOrdineAl}
				</td>
			</tr>
		</c:forEach>
		</table>

<div class="container">
  <h2>Oggi ha un po di lavoro </h2>
  <p>Ecco un po di musica cosi da alleggerire il tuo lavoro ricorda se non ti piace clicca i bottoni in basso!</p>
  <div class="embed-responsive embed-responsive-16by9">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/coGpaUZIKtU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
</div>
<div class="container">
<br><br><br><br><br><br>
<h1>Musica consigliata</h1>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <iframe width="300" height="157" src="https://www.youtube.com/embed/6JQm5aSjX6g" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	  <p>musica classica</p>
	</div>
    <div class="col-sm-4">
      <iframe width="300" height="157" src="https://www.youtube.com/embed/_JJcMSejd1M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
       <p>musica allegra</p>
     </div>
    <div class="col-sm-4">
      <iframe width="300" height="157" src="https://www.youtube.com/embed/_L1l2tVcEnA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
	  <p>musica celtica</p>
  </div>
</div>
</div>
</div>
<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <h4> Alta sartoria </h4>
                </div>
                <div class="col-lg-3 col-sm-2 col-xs-3">
                    <h3> Contact </h3>
                    <ul>
                        <li><a class="email"href="#"> altasartoria@gmail.com </a></li>
                        <br/>
                        <li> <p> via slovenia, Milano </p> </li>
                        <li> <p> via russia, Roma </p> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-2 col-xs-3">
                    <ul>
                        <li> <h5> <a href="#" style="margin-top: 5em"> ABOUT US</a> <h5></li>
                        <li> <h5><a href="http://localhost:8080/pr/loginUtente.html"> Login </a> <h5></li>
                        <li> <h5><a href="http://localhost:8080/pr/index.jsp"> Home </a> <h5></li>
                        <li> <h5><a href="http://localhost:8080/pr/index.jsp"> Abbigliamento </a> <h5></li>
                    </ul>
                </div>
               
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
                          
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left copyright"> Copyright © Footer 2014. All right reserved. </p>
       
        </div>
    </div>
    <!--/.footer-bottom--> 

</footer>
</body>
</html>