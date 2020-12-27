package com.ufabc.web.livraria.model.dao;

import java.util.List;

import com.ufabc.web.livraria.model.entity.Exemplar;
import com.ufabc.web.livraria.model.entity.Livro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ExemplarDao extends JpaRepository<Exemplar, Long> {
    @Query("select count(idexemplar) from Exemplar where disponivel = true and idlivro=:id")
    int countExemplarDisponivel(Long id);

    List<Exemplar> findByLivro(Livro id);
}
