package com.ufabc.web.livraria.controller;

import com.ufabc.web.livraria.model.dao.EditoraDao;
import com.ufabc.web.livraria.model.entity.Editora;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller

public class EditoraController {

	@Autowired
	EditoraDao editoraDao;

	// pagina que lista as editoras
	@RequestMapping(value = { "/editoras" })
	@ResponseBody
	public ModelAndView editoras() {
		ModelAndView mv = new ModelAndView("editoras");
		mv.addObject("editoras", editoraDao.findAll());
		return mv;
	}

	// redirecionar para pagina de inserir editora
	@RequestMapping(value = { "/inserirEditora" })
	@ResponseBody
	public ModelAndView inserirEditora() {
		ModelAndView mv = new ModelAndView("inserirEditora");
		return mv;
	}

	// redirecionar para pagina de editar editora
	@RequestMapping(value = { "/editarEditora/{id}" })
	public ModelAndView editarEditora(@PathVariable Long id) {
		Editora editora = editoraDao.getOne(id);

		ModelAndView mv = new ModelAndView("editarEditora");
		mv.addObject("editora", editora);
		return mv;
	}

	// remover editora
	@RequestMapping(value = { "/removerEditora/{id}" })
	public RedirectView removerEditora(@PathVariable Long id) {
		Editora editora = editoraDao.getOne(id);
		editoraDao.delete(editora);
		return new RedirectView("/editoras");
	}

	// Paginas com forms

	@RequestMapping(value = { "/salvarEditora" })
	@ResponseBody
	public RedirectView salvarEditora(@RequestParam String id, @RequestParam String nome, @RequestParam String sede) {

		Editora editora = new Editora();

		editora.setId(Long.parseLong(id));
		editora.setNome(nome);
		editora.setSede(sede);

		editoraDao.save(editora);
		return new RedirectView("/editoras");
	}

	@RequestMapping(value = { "/salvarEdicaoEditora" })
	@ResponseBody
	public RedirectView salvarEdicaoAutor(@RequestParam String id, @RequestParam String nome,
			@RequestParam String sede) {

		Editora editora = new Editora();

		editora = editoraDao.getOne(Long.parseLong(id));
		editora.setNome(nome);
		editora.setSede(sede);

		editoraDao.save(editora);
		return new RedirectView("/editoras");
	}

}
