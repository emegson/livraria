package com.ufabc.web.livraria.service;

import com.ufabc.web.livraria.model.dao.AutorDao;
import com.ufabc.web.livraria.model.entity.Autor;
import org.springframework.stereotype.Service;

@Service
public class AutorService {

    private final AutorDao dao;

    public AutorService(AutorDao dao) {
        this.dao = dao;
    }

    public void add(Autor autor) {
        dao.save(autor);
    }

    public void delete(Long id) {
        dao.deleteById(id);
    }

}
