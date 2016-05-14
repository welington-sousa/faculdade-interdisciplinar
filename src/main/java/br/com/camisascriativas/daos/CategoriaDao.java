package br.com.camisascriativas.daos;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.camisascriativas.models.Categoria;

public class CategoriaDao {

	@Inject private EntityManager manager;

	public List<Categoria> listaTudo() {
		return manager.createQuery("from Categoria c", Categoria.class)
				.getResultList();
	}
	
	public Categoria buscarPorId(Integer id) {
		return manager.find(Categoria.class, id);
	}
}
