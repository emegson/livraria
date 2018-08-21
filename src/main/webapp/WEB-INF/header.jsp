<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link href="/resources/site.css" rel="stylesheet">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	
	
</head>

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
							aria-expanded="false"> Clientes </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/clientes">Lista de Clientes</a>
							<a class="dropdown-item" href="/inserirCliente">Inserir Cliente</a>
						</div>
					</li>					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
							 data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Editoras </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/editoras">Lista de Editoras</a>
							<a class="dropdown-item" href="/inserirEditora">Inserir Editora</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
	</body>
</html>