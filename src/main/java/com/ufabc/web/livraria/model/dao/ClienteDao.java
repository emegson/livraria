package com.ufabc.web.livraria.model.dao;

import java.util.List;

import com.ufabc.web.livraria.model.entity.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteDao extends JpaRepository<Cliente, Long> {

    List<Cliente> findByNomeContainingIgnoreCase(String cliente);

    Cliente findByNome(String nome);
}
