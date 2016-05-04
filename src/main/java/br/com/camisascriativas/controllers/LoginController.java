package br.com.camisascriativas.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.camisascriativas.daos.UsuarioDao;
import br.com.camisascriativas.models.Usuario;
import br.com.camisascriativas.models.UsuarioLogado;

@Controller
public class LoginController {
	@Inject private UsuarioLogado logado;
	@Inject private UsuarioDao dao;
	@Inject private Result result;

	@Get("login/autentica")
	public void loginForm() {
	}

	@Post("/autentica")
	public void autentica(Usuario usuario) {
		logado.login(dao.carrega(usuario.getLogin()));

		result.redirectTo(ProdutosController.class).camisas();
	}

	@Get("/logout")
	public void sair() {
		logado.logout();
		result.redirectTo(HomeController.class).index();
	}
}
