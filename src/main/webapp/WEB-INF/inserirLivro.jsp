<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Inserir Conta Corrente</title>
</head>
<body>
	<form action="/salvarLivro" method="post">
		<div>
			<p>Nome</p>
			<input type="text" name="nome">
		</div>
		<div>
			<p>Título</p>
			<input type="text" name="titulo">
		</div>
		<div>
			<p>Edicao</p>
			<input type="text" name="edicao">
		</div>
		<div>
			<p>Ano</p>
			<input type="text" name="ano">
		</div>
		<div>
			<p>Idioma</p>
			<input type="text" name="idioma">
		</div>
		<div>
			<p>Quantidade</p>
			<input type="text" name="quantidade">
		</div>
		<div>
			<p>ISBN</p>
			<input type="text" name="isbn">
		</div>
		<div>
			<p>Endereço da Imagem</p>
			<input type="text" name="srcImagemCapa">
		</div>
		<div>
			<input type="submit" value="Salvar">
		</div>

	</form>
</body>
</html>