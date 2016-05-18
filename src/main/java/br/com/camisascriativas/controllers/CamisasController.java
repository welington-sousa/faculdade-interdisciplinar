package br.com.camisascriativas.controllers;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.camisascriativas.annotation.RestrictMethod;
import br.com.camisascriativas.daos.CamisaDao;
import br.com.camisascriativas.models.Camisa;

@Controller
@Path("/camisas")
public class CamisasController {

	@Inject
	private CamisaDao camisaDao;

	@Get("")
	public List<Camisa> camisas() {
		return this.camisaDao.listaTudo();
	}

	@Get("/musicas")
	public List<Camisa> musicas() {
		return this.camisaDao.listaTudoMusica();
	}

	@RestrictMethod
	@Get("/{id}")
	public Camisa produto(Long id) {
		return this.camisaDao.buscaPorId(id);
	}

	public List<Camisa> busca(String nome) {
		return camisaDao.buscaCamisasPor(nome);
	}
}
