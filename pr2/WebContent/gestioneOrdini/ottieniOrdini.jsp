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

	<c:if test="${ordineRegistrato!= null}">
			
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
</c:if>
</body>
</html>