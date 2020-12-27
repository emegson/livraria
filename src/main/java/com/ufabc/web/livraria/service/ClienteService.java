package com.ufabc.web.livraria.service;

import com.ufabc.web.livraria.model.dao.ClienteDao;
import com.ufabc.web.livraria.model.entity.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClienteService {

    private final ClienteDao dao;

    @Autowired
    public ClienteService(ClienteDao dao) {
        this.dao = dao;
    }

    public void add(Cliente cliente) {
        dao.save(cliente);
    }

    public void delete(Long id) {
        dao.deleteById(id);
    }


}
