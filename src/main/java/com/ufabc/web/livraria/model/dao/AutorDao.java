package com.ufabc.web.livraria.model.dao;

import java.util.List;

import com.ufabc.web.livraria.model.entity.Autor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AutorDao extends JpaRepository<Autor, Long> {
    List<Autor> findByNomeContainingIgnoreCase(String nome);

    Autor findByNome(String nome);
}
