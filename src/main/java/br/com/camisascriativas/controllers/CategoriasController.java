package br.com.camisascriativas.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.camisascriativas.daos.CategoriaDao;

public class CategoriasController {
	
	@Inject private CategoriaDao categoriaDao;
	@Inject private Result result;

	@Get("")
	public void list(Integer page) {
		if (page == null) {
			page = 0;
		}
		result.include("paginatedList", categoriaDao.paginated(page, 10));
	}
}
