package br.com.camisascriativas.controllers;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.camisascriativas.annotation.RestrictMethod;
import br.com.camisascriativas.daos.CamisaDao;
import br.com.camisascriativas.models.Camisa;

@Controller
@Path("/camisas")
public class CamisasController {
	@Inject
	private CamisaDao dao;
	@Inject
	private Result result;

	@Get("")
	public List<Camisa> camisas() {
		return this.dao.listaTudo();
	}

	public void femininas() {
		this.result.redirectTo(this).camisas();
	}

	public void masculinas() {
		this.result.redirectTo(this).camisas();
	}
	
	public void criancas() {
		this.result.redirectTo(this).camisas();
	}

	@RestrictMethod
	@Get("/{id}")
	public Camisa produto(Long id) {
		return this.dao.buscaPorId(id);
	}
	
	public List<Camisa> busca(String nome) {
		return dao.buscaCamisasPor(nome);
	}
}
