package br.com.camisascriativas.models;

public class Item {
	private Camisa produto;
	private Integer quantidade;

	public Camisa getProduto() {
		return produto;
	}

	public void setProduto(Camisa produto) {
		this.produto = produto;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}
}
