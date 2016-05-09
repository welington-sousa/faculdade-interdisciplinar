package br.com.camisascriativas.validators;

import javax.inject.Inject;

import br.com.caelum.vraptor.validator.I18nMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.camisascriativas.models.Usuario;

public class LoginValidator {
	
	@Inject private Validator validator;
	
	public void validate(Usuario usuario) {
		validator.validate(usuario);
		validator.addIf(usuario.getLogin() == null, 
				new I18nMessage("usuario.login", "usuario.login.vazio"));
		validator.addIf(usuario.getSenha() == null, 
				new I18nMessage("usuario.senha", "usuario.senha.vazia"));
	}
	
	public <T> T onErrorRedirectTo(T controller) {
		return validator.onErrorRedirectTo(controller);
	}
}
