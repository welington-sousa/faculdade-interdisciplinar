package br.com.camisascriativas.daos;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.camisascriativas.models.Camisa;

public class ProdutoDao {
	@Inject private EntityManager manager;

	public List<Camisa> listaTudo() {
		String jpql = "select p from Produto p order by id desc";
		return manager.createQuery(jpql, Camisa.class).setMaxResults(9).getResultList();
	}

	public Camisa buscaPorId(Long id) {
		return manager.find(Camisa.class, id);
	}
}
