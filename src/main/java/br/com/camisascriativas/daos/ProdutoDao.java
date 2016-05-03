package br.com.camisascriativas.daos;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.camisascriativas.models.Produto;

public class ProdutoDao {
	@Inject private EntityManager manager;

	public List<Produto> listaTudo() {
		String jpql = "select p from Produto p order by id desc";
		return manager.createQuery(jpql, Produto.class).setMaxResults(9).getResultList();
	}

	public Produto buscaPorId(Long id) {
		return manager.find(Produto.class, id);
	}
}
