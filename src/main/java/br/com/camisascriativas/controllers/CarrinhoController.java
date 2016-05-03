package br.com.camisascriativas.controllers;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.camisascriativas.models.Carrinho;
import br.com.camisascriativas.models.Item;
import br.com.camisascriativas.models.Produto;

@Controller
@Path("/carrinho")
public class CarrinhoController {
	@Inject private EntityManager manager;
	@Inject private Carrinho carrinho;
	@Inject private Result result;
	@Inject private Validator validator;

	@Get("")
	public void checkout() {
	}

	@Post("")
	public void adiciona(Item item) {
		validator.addIf(item.getQuantidade() <= 0,
				new SimpleMessage("Quantidade precisa ter número positivo", "item.quantidade"));
		validator.onErrorUsePageOf(this).checkout();

		Produto produtoCompleto = manager.find(Produto.class, item.getProduto().getId());
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
