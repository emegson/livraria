package com.ufabc.web.livraria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ufabc.web.livraria.model.dao.LivroDao;
import com.ufabc.web.livraria.model.entity.Livro;

@Service
public class LivroService {

	@Autowired
	LivroDao dao;
	
	public void add(Livro livro) {
		dao.save(livro);
	}
	
	public void delete(Long id) {
		dao.deleteById(id);
	}
}
