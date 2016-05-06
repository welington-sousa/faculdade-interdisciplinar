package br.com.camisascriativas.daos;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.camisascriativas.models.Usuario;

public class UsuarioDao {
	@Inject
	private EntityManager manager;

	public void salva(Usuario usuario) {
		manager.persist(usuario);
	}

	public Usuario carrega(String login) {
		return manager.createQuery("u from Usuario u where u.login=:login", Usuario.class).setParameter("login", login)
				.getSingleResult();
	}

	public boolean existe(Usuario usuario) {
		return carrega(usuario.getLogin()) != null;
	}
}
