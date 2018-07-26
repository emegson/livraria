package com.ufabc.web.livraria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ufabc.web.livraria.model.dao.AutorDao;
import com.ufabc.web.livraria.model.entity.Autor;

@Service
public class AutorService {

	@Autowired
	AutorDao dao;
	
	public void add(Autor autor) {
		dao.save(autor);
	}
	
	public void delete(Long id) {
		dao.deleteById(id);
	}
	
}
