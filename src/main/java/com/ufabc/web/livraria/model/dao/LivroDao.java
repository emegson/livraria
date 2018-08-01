package com.ufabc.web.livraria.model.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ufabc.web.livraria.model.entity.Livro;

@Repository
public interface LivroDao extends JpaRepository<Livro, Long> {

	public List<Livro> findAllByOrderByNomeAsc();
}
