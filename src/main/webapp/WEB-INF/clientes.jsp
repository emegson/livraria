<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Lista de Clientes</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp">
	    <jsp:param name="header" value=""/>
	</jsp:include>
		
	
	<div class="container" style="margin-top:75px">
		<table class="table table-striped ">
			<thead>
				<tr>
					<th scope="col">Nome do Cliente</th>
					<th scope="col">CPF</th>
					<th scope="col">E-mail</th>
					<th scope="col">Editar</th>
					<th scope="col">Remover</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clientes}" var="clientes">
					<tr>
						<td>${clientes.nome}</td>
						<td>${clientes.cpf}</td>
						<td>${clientes.email}</td>
						<td><a href="/editarCliente/${clientes.id}"
							class="btn btn-primary ">Editar</a></td>
						<td><a href="/removerCliente/${clientes.id}"
							class="btn btn-secondary ">Remover</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
		integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
		crossorigin="anonymous"></script>
</body>
</html>


	