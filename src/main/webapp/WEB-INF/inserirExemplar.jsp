<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	<title>Inserir Exemplar</title>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
  integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
  crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/jquery-ui.css">
<script src="../resources/jquery-ui.js"></script>

<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" >
		<div class="container">
			<a class="navbar-brand" href="index">Livraria</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="\index">Home</a></li>									
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
							 data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Livros </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/livros">Lista de Livros</a>
							<a class="dropdown-item" href="/inserirLivro">Inserir Livro</a>
						</div>
					</li>					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
							 data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Autores </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/autores">Lista de Autores</a>
							<a class="dropdown-item" href="/inserirAutor">Inserir Autor</a>
						</div>
					</li>					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
							 data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Exemplares </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/exemplares">Lista de Exemplares</a>
							<a class="dropdown-item" href="/inserirExemplar">Inserir Exemplar</a>
						</div>
					</li>					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
							 data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Editoras </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/editoras">Lista de Editoras</a>
							<a class="dropdown-item" href="/inserirAutor">Inserir Editora</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
<form action="/salvarExemplar" method="post" style="margin-top:75px;">
		<div class="container">
			<div class="form-group">
				<label for="titulo" class="control-label">Nome do Livro</label>
				<input class="form-control" id="titulo" name="titulo" placeholder="" required>				
			</div>
			<div class="form-group">				
				<input name="disponivel" id="disponivel" value="true" hidden>				
			</div>
			<div class="form-group">
				<!-- Submit Button -->
				<button type="submit" class="btn btn-primary">Inserir</button>
				<button type="button" class="btn btn-primary" onClick="history.go(-1)">Voltar</button>
			</div>
		</div>
	</form>
	<footer class="py-5 bg-dark" >
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Livraria
				2018</p>
		</div>
	</footer>
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

		
<script>
		$('#titulo').autocomplete({
			source : function(request, response) {
				$.ajax({
					url : 'http://localhost:8080/livros/findByName/',
					type : 'POST',
					dataType : 'json',
					data : {
						titulo : request.term,
					},
					success : function(data) {
						response($.map(data, function(item) {
							console.log(item['titulo'])
							return {
								label : item['titulo'],
								value : item['titulo']
							}
						}));
					}
				});
			}
		});
	</script>
</body>

</html>


