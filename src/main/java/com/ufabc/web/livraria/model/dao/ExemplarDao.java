package com.ufabc.web.livraria.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ufabc.web.livraria.model.entity.Exemplar;

@Repository
public interface ExemplarDao extends JpaRepository<Exemplar, Long> {
	
}
