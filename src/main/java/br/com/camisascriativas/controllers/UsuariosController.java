package br.com.camisascriativas.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.camisascriativas.daos.UsuarioDao;
import br.com.camisascriativas.models.Usuario;
import br.com.camisascriativas.models.UsuarioValidator;

@Controller
@Path("/usuarios")
public class UsuariosController {
	@Inject private UsuarioDao dao;
	@Inject private Result result;
	@Inject UsuarioValidator validator;

	@Get("/novo") public void novo() {}

	@Post("")
	public void adiciona(Usuario usuario) {
		validator.validate(usuario);
		validator.onErrorRedirectTo(this).novo();
		dao.salva(usuario);
		result.redirectTo(CamisasController.class).camisas();
	}
}
