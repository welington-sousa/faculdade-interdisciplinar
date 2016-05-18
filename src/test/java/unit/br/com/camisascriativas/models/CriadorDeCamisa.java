package unit.br.com.camisascriativas.models;

import java.math.BigDecimal;

import br.com.camisascriativas.models.Camisa;

public class CriadorDeCamisa {

	private Camisa camisa;

	public CriadorDeCamisa criaCamisaCom(String nome, String descricao, BigDecimal valorUnitario) {
		camisa = new Camisa();
		camisa.setNome(nome);
		camisa.setDescricao(descricao);
		camisa.setValorUnitario(valorUnitario);
		return this;
	}

	public Camisa constroi() {
		return camisa;
	}
}
