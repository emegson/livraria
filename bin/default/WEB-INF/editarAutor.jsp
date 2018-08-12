<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>${autor.nome}</title>
	<link href="https://blackrockdigital.github.io/startbootstrap-4-col-portfolio/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/site.css" rel="stylesheet">
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
	<link
		href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css"
		rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
		<div class="container">
			<a class="navbar-brand" href="../index">Livraria</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="../index">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="../autores">Autor</a></li>
					<li class="nav-item"><a class="nav-link" href="../livros">Livro</a></li>
					<li class="nav-item"><a class="nav-link" href="../#">Editora</a></li>
				</ul>
			</div>
		</div>
	</nav>
			<div class="col-sm">
				<form action="/salvarEdicaoAutor" method="post">
					<div class="container">
						<div class="form-group" style="display: none;">
							<label for="idautor" class="control-label">Id</label> <input
								type="text" class="form-control" id="idautor" name="idautor"
								value="${autor.idautor}">
						</div>


						<div class="form-group">
							<label for="nome" class="control-label">Nome</label> <input
								type="text" class="form-control" id="nome" name="nome"
								value="${autor.nome}" required>
						</div>

						<div class="form-group">
							<label for="nacionalidade" class="control-label">Nacionalidade</label> <input
								type="text" class="form-control" id="nacionalidade" name="nacionalidade"
								value="${autor.nacionalidade}" required>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary">Salvar</button>
						</div>
					</div>
				</form>
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
		
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Livraria
				2018</p>
		</div>
	</footer>
</body>
</html>
