<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Lista de Contas Corrente</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="row">

			<div class="col-sm" style="text-align: right;">
				<img src="${livro.srcImagemCapa}"
					style="margin-right: 5px; margin-top: 10%; max-width: 250px;">
			</div>
			<div class="col-sm">
				<form action="/salvarEdicaoLivro" method="post">
					<div class="container">
						<div class="form-group" style="display: none;">
							<label for="id" class="control-label">Id</label> <input
								type="text" class="form-control" id="id" name="id"
								value="${livro.id}">
						</div>

						<div class="form-group">
							<label for="nome" class="control-label">Nome do Livro</label> <input
								type="text" class="form-control" id="nome" name="nome"
								value="${livro.nome}" required>
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
									<option value ="${autores.nome}" data-tokens="${autores.nome} ${autores.nacionalidade}">${autores.nome}</option>
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

		</div>



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
</body>
</html>
