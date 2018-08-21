<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Inserir Livro</title>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link href="https://blackrockdigital.github.io/startbootstrap-4-col-portfolio/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/site.css" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
	<link href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	
</head>
<body>
	<jsp:include page="header.jsp">
	    <jsp:param name="header" value=""/>
	</jsp:include>
	<div class="main">
		<form action="/salvarLivro" method="post" modelAttribute="livro">
			<div class="container">
				<div class="form-group">
					<label for="titulo" class="control-label">T�tulo</label>
					<input class="form-control" type="text" name="titulo"
						placeholder="Titulo do livro" required>
				</div>
				<div class="form-group">
					<label for="edicao" class="control-label">Edicao</label> 
					<input class="form-control" type="text" name="edicao"
						placeholder="N�mero da edi��o" required>
				</div>
				<div class="form-group">
					<label for="ano" class="control-label">Ano</label> 
					<input class="form-control" type="text" name="ano"
						placeholder="Ano desta edi��o" required>
				</div>
				<div class="form-group">
					<label for="idioma" class="control-label">Idioma</label> 
					<input class="form-control" type="text" name="idioma"
						placeholder="Idioma do livro" required>
				</div>
				<div class="form-group">
					<label for="isbn" class="control-label">ISBN</label>
					<input class="form-control" type="text" name="isbn"
						placeholder="ISBN do livro" required>
				</div>
				<div class="form-group">
					<label for="srcImagemCapa" class="control-label">Endere�o
						da Imagem</label> <input class="form-control" type="text"
						name="srcImagemCapa" placeholder="Link da capa" required>
				</div>
				<div class="form-group">
					<label for="autor" class="control-label">Autor</label> 
					<input class="form-control" id="autor" name="autor" placeholder="Autor" required/>
				</div>
				<div class="container">
					<input type="submit" class="btn btn-primary" value="Salvar">
					<button type="button" class="btn btn-primary"
						onClick="history.go(-1)">Voltar</button>
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
	<script type="text/javascript">
		$('#autor').autocomplete({
			source : function(request, response) {
				$.ajax({
					url : 'http://localhost:8080/autores/findByName/',
					type : 'POST',
					dataType : 'json',
					data : {
						autor : request.term,
					},
					success : function(data) {
						response($.map(data, function(item) {
							console.log(item['nome'])
							return {
								label : item['nome'],
								value : item['id']
							}
						}));
					}
				});
			}
		});
	</script>
</body>
</html>
	<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>