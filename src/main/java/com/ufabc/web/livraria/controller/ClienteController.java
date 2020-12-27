package com.ufabc.web.livraria.controller;

import java.util.List;

import com.ufabc.web.livraria.model.dao.ClienteDao;
import com.ufabc.web.livraria.model.entity.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ClienteController {

    private final ClienteDao clienteDao;

    @Autowired
    public ClienteController(ClienteDao clienteDao) {
        this.clienteDao = clienteDao;
    }

    // pagina que lista os clientes
    @RequestMapping(value = "/clientes")
    @ResponseBody
    public ModelAndView clientes() {
        ModelAndView mv = new ModelAndView("clientes");
        mv.addObject("clientes", clienteDao.findAll());
        return mv;
    }

    // redirecionar para pagina de inserir autor
    @RequestMapping(value = "/inserirCliente")
    @ResponseBody
    public ModelAndView inserirCliente() {
        return new ModelAndView("inserirCliente");
    }

    // redirecionar para pagina de editar cliente
    @RequestMapping(value = "/editarCliente/{id}")
    public ModelAndView editarCliente(@PathVariable Long id) {
        Cliente cliente = clienteDao.getOne(id);

        ModelAndView mv = new ModelAndView("editarCliente");
        mv.addObject("cliente", cliente);
        return mv;
    }

    // remover autor
    @RequestMapping(value = "/removerCliente/{id}")
    public RedirectView removerCliente(@PathVariable Long id) {
        Cliente cliente = clienteDao.getOne(id);
        clienteDao.delete(cliente);
        return new RedirectView("/clientes");
    }

    // Paginas com forms

    @RequestMapping(value = "/salvarCliente")
    @ResponseBody
    public RedirectView salvarCliente(@RequestParam String nome, @RequestParam String cpf, @RequestParam String idade,
                                      @RequestParam String endereco, @RequestParam String email) {

        Cliente cliente = new Cliente();
        return getRedirectView(nome, cpf, idade, endereco, email, cliente);
    }

    @RequestMapping(value = "/salvarEdicaoCliente")
    @ResponseBody
    public RedirectView salvarEdicaoCliente(@RequestParam String id, @RequestParam String nome,
                                            @RequestParam String cpf, @RequestParam String idade,
                                            @RequestParam String endereco, @RequestParam String email) {
        Cliente cliente = clienteDao.getOne(Long.parseLong(id));

        return getRedirectView(nome, cpf, idade, endereco, email, cliente);
    }

    @RequestMapping(value = "/cliente/findByName/")
    @ResponseBody
    public List<Cliente> clienteFindByName(@RequestParam String nome) {
        return clienteDao.findByNomeContainingIgnoreCase(nome);
    }

    private RedirectView getRedirectView(String nome, String cpf, String idade, String endereco, String email,
                                         Cliente cliente) {
        cliente.setNome(nome);
        cliente.setCpf(cpf);
        cliente.setIdade(Integer.parseInt(idade));
        cliente.setEndereco(endereco);
        cliente.setEmail(email);

        clienteDao.save(cliente);
        return new RedirectView("/clientes");
    }
}