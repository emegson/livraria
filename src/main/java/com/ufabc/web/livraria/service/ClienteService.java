package com.ufabc.web.livraria.service;

import org.springframework.stereotype.Service;

import org.springframework.beans.factory.annotation.Autowired;

import com.ufabc.web.livraria.model.dao.ClienteDao;
import com.ufabc.web.livraria.model.entity.Cliente;

@Service
public class ClienteService {

	@Autowired
	ClienteDao dao;
	
	public void add(Cliente cliente) {
		dao.save(cliente);
	}
	
	public void delete(Long id) {
		dao.deleteById(id);
	}
	
	
}
