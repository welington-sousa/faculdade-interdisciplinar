//package br.com.camisascriativas.validators;
//
//import javax.inject.Inject;
//
//import br.com.caelum.vraptor.validator.I18nMessage;
//import br.com.caelum.vraptor.validator.Validator;
//import br.com.camisascriativas.daos.UsuarioDao;
//import br.com.camisascriativas.models.Usuario;
//
//public class UsuarioValidator {
//
//	@Inject private Validator validator;
//	@Inject private UsuarioDao dao;
//
//	public void validate(Usuario usuario) { validator.validate(usuario);
//		if (dao.existeUsuarioComLogin(usuario)) 
//			validator.add(new I18nMessage("usuario.login", "ja.existe"));
//	}
//
//	public <T> T onErrorRedirectTo(T controller) {
//		return validator.onErrorRedirectTo(controller);
//	}
//}
