package br.com.camisascriativas.models;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

@SessionScoped
@Named
public class Carrinho implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private List<Item> itens = new ArrayList<Item>();
	private BigDecimal total = BigDecimal.ZERO;

	public void adiciona(Item item) {
		itens.add(item);
		total = total.add(item.getValor());
	}

	public Integer getTotalDeItens() {
		return itens.size();
	}

	public BigDecimal getTotal() {
		return total;
	}

	public List<Item> getItens() {
		return Collections.unmodifiableList(itens);
	}

	public void remove(int indiceItem) {
		Item removido = itens.remove(indiceItem);
		total = total.subtract(removido.getValor());
	}
}
