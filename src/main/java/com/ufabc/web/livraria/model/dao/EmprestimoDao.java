package com.ufabc.web.livraria.model.dao;

import com.ufabc.web.livraria.model.entity.Emprestimo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmprestimoDao extends JpaRepository<Emprestimo, Long> {

}
