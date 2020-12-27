package com.ufabc.web.livraria.service;

import com.ufabc.web.livraria.model.dao.EditoraDao;
import com.ufabc.web.livraria.model.entity.Editora;
import org.springframework.stereotype.Service;

@Service
public class EditoraService {

    private final EditoraDao dao;

    public EditoraService(EditoraDao dao) {
        this.dao = dao;
    }

    public void add(Editora editora) {
        dao.save(editora);
    }

    public void delete(Long id) {
        dao.deleteById(id);
    }
}