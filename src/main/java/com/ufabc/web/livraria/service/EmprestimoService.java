package com.ufabc.web.livraria.service;

import com.ufabc.web.livraria.model.dao.EmprestimoDao;
import com.ufabc.web.livraria.model.entity.Emprestimo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmprestimoService {

    private final EmprestimoDao dao;

    @Autowired
    public EmprestimoService(EmprestimoDao dao) {
        this.dao = dao;
    }

    public void save(Emprestimo e) {
        dao.save(e);
    }

    public void delete(Long id) {
        dao.deleteById(id);
    }
}
