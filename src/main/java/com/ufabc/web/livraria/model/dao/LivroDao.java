package com.ufabc.web.livraria.model.dao;

import java.util.List;

import com.ufabc.web.livraria.model.entity.Livro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LivroDao extends JpaRepository<Livro, Long> {

    List<Livro> findByTituloContainingIgnoreCase(String nome);

    Livro findByTitulo(String nome);
}
