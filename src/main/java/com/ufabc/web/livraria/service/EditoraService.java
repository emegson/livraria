package com.ufabc.web.livraria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ufabc.web.livraria.model.dao.EditoraDao;
import com.ufabc.web.livraria.model.entity.Editora;

@Service
public class EditoraService {

	@Autowired
	EditoraDao dao;
	
	public void add(Editora editora) {
		dao.save(editora);
	}
	
	public void delete(Long id) {
		dao.deleteById(id);
	}
}
