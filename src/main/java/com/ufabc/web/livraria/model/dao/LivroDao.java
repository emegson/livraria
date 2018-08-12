package com.ufabc.web.livraria.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ufabc.web.livraria.model.entity.Livro;

@Repository
public interface LivroDao extends JpaRepository<Livro, Long> {

}
