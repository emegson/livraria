package com.ufabc.web.livraria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ufabc.web.livraria.model.dao.ExemplarDao;
import com.ufabc.web.livraria.model.entity.Exemplar;

@Service
public class ExemplarService {

	@Autowired
	ExemplarDao dao;
	
	public void add(Exemplar exemplar) {
		dao.save(exemplar);
	}
	
	public void delete(Long id) {
		dao.deleteById(id);
	}
}
