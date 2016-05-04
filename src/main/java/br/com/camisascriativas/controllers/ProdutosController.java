package br.com.camisascriativas.controllers;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.camisascriativas.annotation.RestrictMethod;
import br.com.camisascriativas.daos.ProdutoDao;
import br.com.camisascriativas.models.Produto;

@Controller
@Path("/produtos")
public class ProdutosController {
	@Inject private ProdutoDao dao;

	@Get("")
	public List<Produto> camisas() {
		return this.dao.listaTudo();
	}
	
	public List<Produto> femininas() {
		return this.camisas();
	}

	@RestrictMethod @Get("/{id}")
	public Produto produto(Long id) {
		return this.dao.buscaPorId(id);
	}
}
