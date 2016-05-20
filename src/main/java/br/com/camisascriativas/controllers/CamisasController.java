package br.com.camisascriativas.controllers;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.camisascriativas.daos.CamisaDao;
import br.com.camisascriativas.models.Camisa;

@Controller
@Path("/camisas")
public class CamisasController {

	@Inject
	private CamisaDao camisaDao;
	@Inject
	private Result result;

	@Get("/computacao")
	public List<Camisa> computacao() {
		return this.camisaDao.listaTudoComputacao();
	}

	@Get("/musicas")
	public List<Camisa> musicas() {
		return this.camisaDao.listaTudoMusica();
	}

	@Get("/{id}")
	public Camisa produto(Integer id) {
		return this.camisaDao.buscaPorId(id);
	}

	@Get("/busca")
	public List<Camisa> busca(String nome) {
		result.include("nome", nome);
		return camisaDao.buscaCamisasPor(nome);
	}
}
