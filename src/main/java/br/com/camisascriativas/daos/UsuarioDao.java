package br.com.camisascriativas.daos;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.camisascriativas.models.Usuario;

public class UsuarioDao {

	@Inject private EntityManager manager;

	public void salva(Usuario usuario) {
		manager.persist(usuario);
	}

	public Usuario carrega(String login) {
		return manager.createQuery("from Usuario u where u.login=:login", Usuario.class)
				.setParameter("login", login)
				.getSingleResult();
	}

	public boolean existeUsuarioComLogin(Usuario usuario) {
		Usuario encontrado = manager
				.createQuery("from Usuario u where u.login=:login", Usuario.class)
				.setParameter("login", usuario.getLogin())
				.getSingleResult();
				return encontrado != null;
	}
	
	public boolean existeUsuarioComSenha(Usuario usuario) {
		Usuario encontrado = manager
				.createQuery("from Usuario u where u.senha=:senha", Usuario.class)
				.setParameter("senha", usuario.getSenha())
				.getSingleResult();
				return encontrado != null;
	}
}
