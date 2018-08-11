<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Lista de Livros</title>

<link rel="stylesheet" 
href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>


</head>
<style>
.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

 #container ul { list-style: none; }

 #container .list li { width: 100%; border-bottom: 1px dotted #CCC; margin-bottom: 10px; padding-bottom: 10px; }

 #container .grid li { float: left; width: 20%; height: 50px; border-right: 1px dotted #CCC; border-bottom: 1px dotted #CCC; padding: 20px; }
 
 .card-columns {
 column-count: 4;

}
</style>
<body>
<!-- 	<table border="1" class="table"> -->
<!-- 		<thead> -->
<!-- 			<tr> -->
<!-- 				<th scope="col"><b>Capa</b></th> -->
<!-- 				<th scope="col"><b>Nome</b></th> -->
<!-- 				<th scope="col"><b>Edição</b></th> -->
<!-- 				<th scope="col"><b>Ano</b></th> -->
<!-- 				<th scope="col"><b>Quantidade</b></th> -->
<!-- 			</tr> -->
<!-- 		</thead> -->
<!-- 		<tbody> -->
<%-- 			<c:forEach items="${livros}" var="livros"> --%>
<!-- 				<tr> -->
<%-- 					<td><img src="${livros.srcImagemCapa}" class="center" --%>
<!-- 						style="max-width: 100px;"></td> -->
<%-- 					<td><c:out value="${livros.nome}"></c:out></td> --%>
<%-- 					<td><c:out value="${livros.edicao}"></c:out></td> --%>
<%-- 					<td><c:out value="${livros.ano}"></c:out></td> --%>
<%-- 					<td><c:out value="${livros.quantidade}"></c:out></td> --%>

<%-- 					<td><a href="/editarLivro/${livros.id}"> --%>
<!-- 							<button type="submit">Editar</button> -->
<!-- 					</a></td> -->
<%-- 					<td><a href="/removerLivro/${livros.id}"> --%>
<!-- 							<button type="submit">Remover</button> -->
<!-- 					</a></td> -->
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</tbody> -->
<!-- 	</table> -->
		<div class="card-columns">
			<c:forEach items="${livros}" var="livros">
					<div class="card" style="margin: 10px;"
						id="idCard_${livros.id}">
						<img class="card-img-top center" src="${livros.srcImagemCapa}"
							style="max-width: 100px; margin-top: 5px;" alt="Capa do Livro - ${livros.titulo}">
						<div class="card-body">
							<h5 class="card-title " style="text-align: center;height: 50px;">
							<span class="align-middle" style="text-align: center;">${livros.titulo}</span>
							
							</h5>
							<p class="card-text"><ul class="list-group list-group-flush">
								<li class="list-group-item">Edição: ${livros.edicao}</li>
							<li class="list-group-item">Ano: ${livros.ano}</li>
							<li class="list-group-item">Quantidade: ${livros.quantidade}</li>
						</ul>
						</p>
						<div style="text-align:center;">
						<a href="/editarLivro/${livros.id}" class="btn btn-primary ">Editar</a>
						<a href="/removerLivro/${livros.id}" class="btn btn-secondary ">Remover</a>
						</div>
					</div>
				</div>

		</c:forEach>
	</div>

</div>
	<a href="inserirLivro">
		<button >Inserir</button>
	</a>

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
