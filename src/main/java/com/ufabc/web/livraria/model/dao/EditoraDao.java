package com.ufabc.web.livraria.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ufabc.web.livraria.model.entity.Editora;

@Repository
public interface EditoraDao extends JpaRepository<Editora, Long> {

}
