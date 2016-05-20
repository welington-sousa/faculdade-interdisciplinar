package br.com.camisascriativas.daos;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.camisascriativas.models.Camisa;

public class CamisaDao {

	@Inject
	private EntityManager manager;

	public List<Camisa> listaTudoComputacao() {
		return manager.createQuery("from Camisa c order by id asc", Camisa.class).setMaxResults(9).getResultList();
	}

	public List<Camisa> listaTudoMusica() {
		return manager.createQuery("from Camisa c order by id desc", Camisa.class).setMaxResults(9).getResultList();
	}

	public Camisa buscaPorId(Integer id) {
		return manager.find(Camisa.class, id);
	}

	public List<Camisa> buscaCamisasPor(String nome) {
		return manager.createQuery("from Camisa c where lower(c.nome) like lower(:nome)", Camisa.class)
				.setParameter("nome", nome).getResultList();
	}
}
