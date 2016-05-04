package br.com.camisascriativas.controllers;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.camisascriativas.annotation.RestrictMethod;
import br.com.camisascriativas.daos.ProdutoDao;
import br.com.camisascriativas.models.Produto;

@Controller
@Path("/produtos")
public class ProdutosController {
	@Inject private ProdutoDao dao;
	@Inject private Result result;

	@Get("")
	public List<Produto> camisas() {
		return this.dao.listaTudo();
	}
	
	@Get("/camisas")
	public void femininas() {
		this.result.redirectTo(this).camisas();
	}

	@RestrictMethod @Get("/{id}")
	public Produto produto(Long id) {
		return this.dao.buscaPorId(id);
	}
}
