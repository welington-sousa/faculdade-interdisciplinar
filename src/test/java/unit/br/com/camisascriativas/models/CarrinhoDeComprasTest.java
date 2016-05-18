package unit.br.com.camisascriativas.models;

import static org.junit.Assert.assertEquals;

import java.math.BigDecimal;

import org.junit.Before;
import org.junit.Test;

import br.com.camisascriativas.models.Camisa;
import br.com.camisascriativas.models.CarrinhoDeCompras;
import br.com.camisascriativas.models.ItemCompra;

public class CarrinhoDeComprasTest {

	private CarrinhoDeCompras carrinho;
	private Camisa mulher;
	private Camisa homem;

	@Before
	public void inicializa() {
		this.carrinho = new CarrinhoDeCompras();
		this.mulher = new CriadorDeCamisa()
				.criaCamisaCom("Camiseta Flor de Lotus", "100% algodão; lavagem a mão", new BigDecimal(70.00))
				.constroi();
		this.homem = new CriadorDeCamisa()
				.criaCamisaCom("Camiseta Os Muntantes", "100% algodão; lavagem a mão", new BigDecimal(70.00))
				.constroi();
		this.homem = new CriadorDeCamisa()
				.criaCamisaCom("Camiseta Os Muntantes", "100% algodão; lavagem a mão", new BigDecimal(80.90))
				.constroi();
	}

	@Test
	public void deveRetornarZeroSeCarrinhoEstiverVazio() {
		assertEquals(0.0, carrinho.getTotal().doubleValue(), 0.0001);
	}

	@Test
	public void deveRetornarValorDoItemSeCarrinhoTiverApenasUmElemento() {
		carrinho.adiciona(new ItemCompra(mulher, 2));

		assertEquals("quantidade de itens", 1, carrinho.getTotalDeItens());
		assertEquals("valor total", 140, carrinho.getTotal().doubleValue(), 0.0001);
	}

	@Test
	public void deveRetornarMaiorValorSeCarrinhoContemMuitosElementos() {
		carrinho.adiciona(new ItemCompra(homem, 2));
		carrinho.adiciona(new ItemCompra(homem, 1));

		assertEquals(2, carrinho.getTotalDeItens());
		assertEquals("maior valor", 80.90, encontraNo(carrinho), 0.0001);
		assertEquals(242.70000000000002, carrinho.getTotal().doubleValue(), 0.0001);
	}

	@Test
	public void deveAdicionarItensNoCarrinhoDeCompras() {
		// garante que o carrinho está vazio
		assertEquals(0, carrinho.getItens().size());

		ItemCompra item = new ItemCompra(mulher, 2);
		carrinho.adiciona(item);

		assertEquals(1, carrinho.getItens().size());
		assertEquals(item, carrinho.getItens().get(0));
	}

	private double encontraNo(CarrinhoDeCompras carrinho) {
		return carrinho.getItens().get(0).getCamisa().getValorUnitario().doubleValue();
	}
}
