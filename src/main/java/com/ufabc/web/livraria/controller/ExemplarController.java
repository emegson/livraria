package com.ufabc.web.livraria.controller;

import com.ufabc.web.livraria.model.dao.ExemplarDao;
import com.ufabc.web.livraria.model.dao.LivroDao;
import com.ufabc.web.livraria.model.entity.Exemplar;
import com.ufabc.web.livraria.model.entity.Livro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ExemplarController {

    private final LivroDao livroDao;
    private final ExemplarDao exemplarDao;

    @Autowired
    public ExemplarController(ExemplarDao exemplarDao, LivroDao livroDao) {
        this.exemplarDao = exemplarDao;
        this.livroDao = livroDao;
    }

    @RequestMapping(value = "/exemplares")
    @ResponseBody
    //pagina para listar exemplares
    public ModelAndView exemplares() {
        ModelAndView mv = new ModelAndView("exemplares");
        mv.addObject("exemplares", exemplarDao.findAll());
        System.out.println(exemplarDao.findAll().toString());
        return mv;
    }

    @RequestMapping(value = "/exemplares/{id}")
    @ResponseBody
    //pagina para listar exemplares
    public ModelAndView exemplarPorId(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("exemplares");
        mv.addObject("exemplares", exemplarDao.findByLivro(livroDao.getOne(id)));
        System.out.println(exemplarDao.findById(id).toString());
        mv.addObject("disponivel", exemplarDao.countExemplarDisponivel(id));
        return mv;
    }


    // pagina que insere exemplar
    @RequestMapping(value = "/inserirExemplar")
    @ResponseBody
    public ModelAndView inserirExemplar() {
        return new ModelAndView("inserirExemplar");
    }

    @RequestMapping(value = "/editarExemplar/{id}")
    @ResponseBody
    public ModelAndView salvarEdicaoExemplar(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("editarExemplar");
        Exemplar exemplar = exemplarDao.getOne(id);

        mv.addObject("exemplar", exemplar);

        return mv;
    }

    // remover exemplar
    @RequestMapping(value = "/removerExemplar/{id}")
    public RedirectView removerExemplar(@PathVariable Long id) {
        Exemplar exemplar = exemplarDao.getOne(id);
        exemplarDao.delete(exemplar);
        return new RedirectView("/exemplares");
    }

    // Paginas com forms
    @RequestMapping(value = "/salvarExemplar")
    @ResponseBody
    public RedirectView salvarExemplar(@RequestParam String titulo) {
        Livro livro = livroDao.findByTitulo(titulo);
        System.out.println(titulo);
        Exemplar exemplar = new Exemplar();
        exemplar.setDisponivel(true);
        exemplar.setLivro(livro);
        exemplarDao.save(exemplar);
        return new RedirectView("/exemplares");
    }

    @RequestMapping(value = "/salvarEdicaoExemplar")
    @ResponseBody
    public RedirectView salvarEdicaoExemplar(@RequestParam String idexemplar,
                                             @RequestParam(value = "disponivel", required = false) String disponivel) {
        Exemplar exemplar = exemplarDao.getOne(Long.parseLong((idexemplar)));
        exemplar.setDisponivel(disponivel != null);
        exemplarDao.save(exemplar);
        return new RedirectView("/exemplares");
    }
}