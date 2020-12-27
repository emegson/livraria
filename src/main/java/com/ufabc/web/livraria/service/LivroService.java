package com.ufabc.web.livraria.service;

import com.ufabc.web.livraria.model.dao.LivroDao;
import com.ufabc.web.livraria.model.entity.Livro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LivroService {

    private final LivroDao dao;

    @Autowired
    public LivroService(LivroDao dao) {
        this.dao = dao;
    }

    public void add(Livro livro) {
        dao.save(livro);
    }

    public void delete(Long id) {
        dao.deleteById(id);
    }
}
