package com.ufabc.web.livraria.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;



@Entity
public class Livro {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "service_sequence")
	@SequenceGenerator(name = "service_sequence", sequenceName = "service_sequence", allocationSize=1)
	private Long idlivro;
	private String titulo;
	private int edicao;
	private int ano;
	private String idioma;
	private int quantidade;
	private String isbn;
	private String srcImagemCapa;
	
	@ManyToOne
	@JoinColumn(name = "idautor")
	private Autor autor;
	
	public Autor getAutor() {
		return autor;
	}
	public void setAutor(Autor autor) {
		this.autor = autor;
	}
	@ManyToOne
	private Editora editora;
	
	public Editora getEditora() {
		return editora;
	}
	public void setEditora(Editora editora) {
		this.editora = editora;
	}
	@OneToOne
	private Emprestimo emprestimo;
	
	
	public Emprestimo getEmprestimo() {
		return emprestimo;
	}
	public void setEmprestimo(Emprestimo emprestimo) {
		this.emprestimo = emprestimo;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public Long getidlivro() {
		return idlivro;
	}
	public void setidlivro(Long id) {
		this.idlivro = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public int getEdicao() {
		return edicao;
	}
	public void setEdicao(int edicao) {
		this.edicao = edicao;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getIdioma() {
		return idioma;
	}
	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public String getSrcImagemCapa() {
		return srcImagemCapa;
	}
	public void setSrcImagemCapa(String srcImagemCapa) {
		this.srcImagemCapa = srcImagemCapa;
	}
}
