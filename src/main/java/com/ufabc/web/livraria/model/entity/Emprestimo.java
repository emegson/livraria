package com.ufabc.web.livraria.model.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Emprestimo {

	@Id
	@GeneratedValue
	private Long id;
	private Date dataDoEmprestimo;
	private Date dataDeRetorno;
	
	@ManyToOne
	private Exemplar livro;
	
	@ManyToOne
	private Cliente cliente;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public Date getDataDoEmprestimo() {
		return dataDoEmprestimo;
	}
	public void setDataDoEmprestimo(Date dataDoEmprestimo) {
		this.dataDoEmprestimo = dataDoEmprestimo;
	}
	public Date getDataDeRetorno() {
		return dataDeRetorno;
	}
	public void setDataDeRetorno(Date dataDeRetorno) {
		this.dataDeRetorno = dataDeRetorno;
	}
	public void setExemplar(Exemplar livro)
	{
		this.livro = livro;
	}
	public Exemplar getExemplar()
	{
		return livro;
	}
	
}
