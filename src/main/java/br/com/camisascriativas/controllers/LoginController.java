package br.com.camisascriativas.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.camisascriativas.daos.UsuarioDao;
import br.com.camisascriativas.models.Usuario;
import br.com.camisascriativas.models.UsuarioLogado;
import br.com.cc.validators.LoginValidator;

@Controller
public class LoginController {
	
	@Inject private UsuarioLogado logado;
	@Inject private UsuarioDao dao;
	@Inject private Result result;
	@Inject private LoginValidator validator;

	@Get("login/autentica") public void loginForm() {}

	@Post("/autentica")
	public void autentica(Usuario usuario) {
		validator.validate(usuario);
		validator.onErrorRedirectTo(this).loginForm();
		logado.login(dao.carrega(usuario.getLogin()));
		result.redirectTo(CamisasController.class).camisas();
	}

	@Get("/logout") public void sair() { logado.logout();
		result.redirectTo(HomeController.class).index();
	}
}
