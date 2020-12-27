package com.ufabc.web.livraria.service;

import com.ufabc.web.livraria.model.dao.ExemplarDao;
import com.ufabc.web.livraria.model.entity.Exemplar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExemplarService {

    private final ExemplarDao dao;

    @Autowired
    public ExemplarService(ExemplarDao dao) {
        this.dao = dao;
    }

    public void add(Exemplar exemplar) {
        dao.save(exemplar);
    }

    public void delete(Long id) {
        dao.deleteById(id);
    }
}
