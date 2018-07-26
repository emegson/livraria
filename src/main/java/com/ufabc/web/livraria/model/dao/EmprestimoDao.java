package com.ufabc.web.livraria.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ufabc.web.livraria.model.entity.Emprestimo;

@Repository
public interface EmprestimoDao extends JpaRepository<Emprestimo, Long> {

}
