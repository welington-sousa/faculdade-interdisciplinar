package br.com.camisascriativas.interceptor;

import javax.inject.Inject;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.camisascriativas.annotation.RestrictMethod;
import br.com.camisascriativas.controllers.LoginController;
import br.com.camisascriativas.models.UsuarioLogado;

/**
 * Classe que restringe acesso de usuários na aplicação
 * 
 * @autor Welington Sousa
 * @version 1.0, alterado em 08/02/2016 
 * @see Interceptor
 */ 
@Intercepts
public class AutenticaInterceptor implements Interceptor {
	
	@Inject private UsuarioLogado logado;
	@Inject private Result result;

	/**
	 * Define condição de aceitação
	 * 
	 * @param method ControllerMethod requisita o controller
	 * @return objeto a ser interceptado e restringe acesso a quem tiver @RestrictMethod anotado
	 */ 
	@Override
	public boolean accepts(ControllerMethod method) {
		return !this.logado.isLogado() && method.containsAnnotation(RestrictMethod.class);
	}

	/**
	 * Intercepta antes e depois da requisição a ser processada
	 * 
	 * @param stack InterceptorStack executa lógica de negócios
	 * @param method ControllerMethod requisita o controller
	 * @param resourceInstance Object instância pronta
	 */ 
	@Override
	public void intercept(InterceptorStack stack, ControllerMethod method,
		Object resourceInstance) throws InterceptionException {
		
		this.result.redirectTo(LoginController.class).loginForm();
	}
}
