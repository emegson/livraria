package com.ufabc.web.livraria.model.dao;

import com.ufabc.web.livraria.model.entity.Editora;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EditoraDao extends JpaRepository<Editora, Long> {

}
