package br.com.camisascriativas.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
@Path("/compras")
public class ComprasController {

	@Inject
	private Result result;

	@Get("/efetivar")
	public void efetivar() {
	}

	public void compra() {
		result.include("msg", "Sucesso");
	}
}