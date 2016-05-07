package br.com.camisascriativas.models;

import java.math.BigDecimal;

public class Item {
	
	private Camisa camisa;
	private Integer quantidade;

	public Camisa getProduto() {
		return camisa;
	}

	public void setProduto(Camisa camisa) {
		this.camisa = camisa;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}
	
	public BigDecimal getValor() {
		return camisa.getPreco().multiply(new BigDecimal(quantidade));
	}
}
