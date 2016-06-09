package br.com.camisascriativas.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;

@Controller
@Path("/compras")
public class ComprasController {

	@Inject
	private Result result;

	@Get("/efetivar")
	public void efetivar() {
	}

	@Post("/sucesso")
	public void sucesso() {
		result.include("msg", "Compra finalizada");
	}
}