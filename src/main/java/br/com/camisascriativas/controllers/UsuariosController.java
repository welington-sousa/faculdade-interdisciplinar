package br.com.camisascriativas.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.camisascriativas.daos.UsuarioDao;
import br.com.camisascriativas.models.Usuario;

@Controller
@Path("/usuarios")
public class UsuariosController {
	@Inject
	private UsuarioDao dao;
	@Inject
	private Validator validator;
	@Inject
	private Result result;

	@Get("/novo")
	public void novo() {
	}

	@Post("")
	public void adiciona(Usuario usuario) {
		validator.addIf(dao.existe(usuario), new SimpleMessage("usuário já existe", "usuario.login"));
		validator.onErrorUsePageOf(this).novo();
		dao.salva(usuario);
		result.redirectTo(CamisasController.class).camisas();
	}
}
