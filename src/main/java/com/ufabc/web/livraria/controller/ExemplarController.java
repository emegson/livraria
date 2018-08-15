package com.ufabc.web.livraria.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.ufabc.web.livraria.model.dao.ExemplarDao;
import com.ufabc.web.livraria.model.dao.LivroDao;
import com.ufabc.web.livraria.model.entity.Exemplar;
import com.ufabc.web.livraria.model.entity.Livro;

@Controller
public class ExemplarController {

	@Autowired
	LivroDao livroDao;
	@Autowired
	ExemplarDao exemplarDao;

	@RequestMapping(value = {"/exemplares"})
	@ResponseBody
	//pagina para listar exemplares
	public ModelAndView exemplares() {
		ModelAndView mv = new ModelAndView("exemplares");
		mv.addObject("exemplares", exemplarDao.findAll());
		System.out.println(exemplarDao.findAll().toString());
		return mv;
	}
	
	
	// pagina que insere exemplar
	@RequestMapping(value = {"/inserirExemplar" })
	@ResponseBody
	public ModelAndView inserirExemplar() {
		ModelAndView mv = new ModelAndView("inserirExemplares");
		mv.addObject("livros", livroDao.findAll());
		System.out.println("inserirExemplares");
		return mv;
	}
	
	@RequestMapping(value = { "/editarExemplar/{id}" })
	@ResponseBody
	public ModelAndView salvarEdicaoExemplar(@PathVariable Long id)
	{
		ModelAndView mv = new ModelAndView("editarExemplar");
		Exemplar exemplar = new Exemplar();
		exemplar  = exemplarDao.getOne(id);
		
		mv.addObject("exemplar", exemplar);
			
		return mv;
	}

	// remover exemplar
	@RequestMapping(value = { "/removerExemplar/{id}" })
	public RedirectView removerExemplar(@PathVariable Long id) {
		Exemplar exemplar = exemplarDao.getOne(id);
		exemplarDao.delete(exemplar);
		return new RedirectView("/exemplares");
	}

	// Paginas com forms

	@RequestMapping(value = { "/salvarExemplar" })
	@ResponseBody
	public RedirectView salvarExemplar(@RequestParam boolean status, @RequestParam Livro livro) 
	{
		Exemplar exemplar = new Exemplar(livro,status);
		
		exemplarDao.save(exemplar);

		return new RedirectView("/exemplares");

	}
	
	
	
	@RequestMapping(value = { "/salvarEdicaoExemplar" })
	@ResponseBody
	public RedirectView salvarEdicaoExemplar(@ModelAttribute Exemplar exemplar)
	{
		
		//Autor autorClasse = new Autor();
		//autorClasse = autorDao.findByNome(autor);
		
		exemplarDao.save(exemplar);
		
		
	
		return new RedirectView("/exemplares");
	}

}
