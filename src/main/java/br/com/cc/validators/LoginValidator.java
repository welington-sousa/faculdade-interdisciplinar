package br.com.cc.validators;

import javax.inject.Inject;

import br.com.caelum.vraptor.validator.I18nMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.camisascriativas.models.Usuario;

public class LoginValidator {
	
	@Inject private Validator validator;
	
	public void validate(Usuario usuario) {
		validator.validate(usuario);
		
		if (usuario.getLogin() == null) 
			validator.add(new I18nMessage("usuario.login", "usuario.nome.vazio"));
	}
	
	public <T> T onErrorRedirectTo(T controller) {
		return validator.onErrorRedirectTo(controller);
	}
}
