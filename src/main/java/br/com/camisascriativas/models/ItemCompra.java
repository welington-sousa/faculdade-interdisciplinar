package br.com.camisascriativas.models;

import java.math.BigDecimal;

public class ItemCompra {

	private Camisa camisa;
	private Integer quantidade;

	public ItemCompra(Camisa camisa, int quantidade) {
		this.camisa = camisa;
		this.quantidade = quantidade;
	}

	public void setCamisa(Camisa camisa) {
		this.camisa = camisa;
	}

	public Camisa getCamisa() {
		return camisa;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public BigDecimal getValor() {
		return camisa.getValorUnitario().multiply(new BigDecimal(quantidade));
	}
}
