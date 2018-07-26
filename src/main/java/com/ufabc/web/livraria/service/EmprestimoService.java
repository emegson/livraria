package com.ufabc.web.livraria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ufabc.web.livraria.model.dao.EmprestimoDao;
import com.ufabc.web.livraria.model.entity.Emprestimo;

@Service
public class EmprestimoService {

	@Autowired
	EmprestimoDao dao;
	
	public void save(Emprestimo e) {
		dao.save(e);
	}
	
	public void delete(Long id) {
		dao.deleteById(id);
	}
}
