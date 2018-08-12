<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	<title>Lista de Livros</title>
	
	<link href="https://blackrockdigital.github.io/startbootstrap-4-col-portfolio/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/site.css" rel="stylesheet">
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
	<link
		href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css"
		rel="stylesheet">
	
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index">Livraria</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="index">Home
					</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="autores">Autor</a>
					</li>
					<li class="nav-item active"><a class="nav-link" href="livros">Livro
						<span class="sr-only">(current)</span>
					</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Editora</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="main">
		<div class="card-columns">
			<c:forEach items="${livros}" var="livros">
					<div class="card" style="margin: 10px;"
						id="idCard_${livros.idlivro}">
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
								<a href="/editarLivro/${livros.idlivro}" class="btn btn-primary ">Editar</a>
								<a href="/removerLivro/${livros.idlivro}" class="btn btn-secondary ">Remover</a>
							</div>
						</div>
					</div>
			</c:forEach>
			<br>
			
		</div>
		<div class="container">
			<a href="inserirLivro">
				<button type="button" class="btn btn-primary">Inserir Livro</button>
			</a>
		</div>
		

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
		</div>
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Livraria
				2018</p>
		</div>
	</footer>
</body>

</html>
