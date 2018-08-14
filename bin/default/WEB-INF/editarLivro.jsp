<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	<title>${livro.titulo}</title>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link href="https://blackrockdigital.github.io/startbootstrap-4-col-portfolio/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/site.css" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
	<link href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
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

			<div class="col-sm" style="text-align: center">
				<img src="${livro.srcImagemCapa}"
					style="margin-right: 5px; margin-top: 3%; max-width: 250px;">
			</div>
			<div class="col-sm">
				<form action="/salvarEdicaoLivro" method="post">
					<div class="container">
						<div class="form-group" style="display: none;">
							<label for="idlivro" class="control-label">Id</label> <input
								type="text" class="form-control" id="idlivro" name="idlivro"
								value="${livro.idlivro}">
						</div>

						<div class="form-group">
							<label for="titulo" class="control-label">Título Original</label>
							<input type="text" class="form-control" id="titulo" name="titulo"
								value="${livro.titulo}" required>
						</div>


						<div class="form-group">
							<label for="autor" class="control-label">Autor</label> <select
								class="form-control" id="autor" name="autor" data-live-search="true" >
								<c:forEach items="${autores}" var="autores">
									<option value ="${autores.idautor}" data-tokens="${autores.nome} ${autores.nacionalidade}">${autores.nome}</option>
								</c:forEach>
							</select>

						</div>


						<div class="form-group">
							<label for="edicao" class="control-label">Edição</label> <input
								type="text" class="form-control" id="edicao" name="edicao"
								value="${livro.edicao}" required>
						</div>

						<div class="form-group">
							<label for="ano" class="control-label">Ano</label> <input
								type="text" class="form-control" id="ano" name="ano"
								value="${livro.ano}" required>
						</div>

						<div class="form-group">
							<label for="idioma" class="control-label">Idioma</label> <input
								type="text" class="form-control" id="idioma" name="idioma"
								value="${livro.idioma}" required>
						</div>

						<div class="form-group">
							<label for="quantidade" class="control-label">Quantidade</label>
							<input type="text" class="form-control" id="quantidade"
								name="quantidade" value="${livro.quantidade}" required>
						</div>

						<div class="form-group">
							<label for="isbn" class="control-label">ISBN</label> <input
								type="text" class="form-control" id="isbn" name="isbn"
								value="${livro.isbn}" required>
						</div>

						<div class="form-group">
							<label for="srcImagemCapa" class="control-label">Caminho
								da Imagem</label> <input type="text" class="form-control"
								id="srcImagemCapa" name="srcImagemCapa"
								value="${livro.srcImagemCapa}" required>
						</div>

						<div class="form-group">
							<button type="submit" class="btn btn-primary">Salvar</button>
						</div>
					</div>
				</form>
			</div>
		
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Livraria
				2018</p>
		</div>
	</footer>
</body>
</html>
