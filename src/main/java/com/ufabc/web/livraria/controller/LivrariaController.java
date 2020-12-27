package com.ufabc.web.livraria.controller;

import com.ufabc.web.livraria.model.dao.AutorDao;
import com.ufabc.web.livraria.model.dao.LivroDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LivrariaController {

    private final LivroDao livroDao;
    private final AutorDao autorDao;

    @Autowired
    public LivrariaController(LivroDao livroDao, AutorDao autorDao) {
        this.livroDao = livroDao;
        this.autorDao = autorDao;
    }

    @GetMapping(value = "index")
    @ResponseBody
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("index");

        mv.addObject("livros", livroDao.findAll());
        System.out.println(autorDao.findAll().toString());

        return mv;
    }
}
