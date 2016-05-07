package br.com.camisascriativas.controllers;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.camisascriativas.models.Camisa;
import br.com.camisascriativas.models.Carrinho;
import br.com.camisascriativas.models.CarrinhoValidator;
import br.com.camisascriativas.models.Item;

@Controller
@Path("/carrinho")
public class CarrinhoController {
	@Inject private EntityManager manager;
	@Inject private Carrinho carrinho;
	@Inject private Result result;
	@Inject private CarrinhoValidator validator;

	@Get("") public void checkout() {}

	@Post("")
	public void adiciona(Item item) {
		validator.validate(item);
		validator.onErrorRedirectTo(this).checkout();
		
		Camisa produtoCompleto = manager.find(Camisa.class, item.getProduto().getId());
		item.setProduto(produtoCompleto);
		carrinho.adiciona(item);
		result.redirectTo(this).checkout();
	}

	@Delete("/{indiceItem}")
	public void remove(Integer indiceItem) {
		carrinho.remove(indiceItem);
		result.redirectTo(this).checkout();
	}
}
