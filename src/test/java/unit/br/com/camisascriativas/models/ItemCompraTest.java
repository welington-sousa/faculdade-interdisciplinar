package unit.br.com.camisascriativas.models;

import static org.junit.Assert.assertEquals;

import java.math.BigDecimal;

import org.junit.Before;
import org.junit.Test;

import br.com.camisascriativas.models.Camisa;
import br.com.camisascriativas.models.ItemCompra;

public class ItemCompraTest {

	private Camisa camisa = new Camisa();

	@Before
	public void inicializa() {
		this.camisa = new CriadorDeCamisa()
				.criaCamisaCom("Camiseta Raul Seixas", "100% algodão; lavagem a mão", BigDecimal.valueOf(70.90))
				.constroi();
	}

	@Test
	public void deveInstaciarItemCompraCorretamente() {
		ItemCompra item = new ItemCompra(camisa, 2);

		assertEquals(2, item.getQuantidade());
		assertEquals(camisa, item.getCamisa());
		assertEquals(BigDecimal.valueOf(141.8), item.getValor());
	}

	@Test
	public void deveRetornarValorDeAcordoComAQuantidade() {
		assertEquals(BigDecimal.valueOf(0.0), new ItemCompra(camisa, 0).getValor());
		assertEquals(BigDecimal.valueOf(70.90), new ItemCompra(camisa, 1).getValor());
		assertEquals(BigDecimal.valueOf(354.5), new ItemCompra(camisa, 5).getValor());
		assertEquals(BigDecimal.valueOf(709.0), new ItemCompra(camisa, 10).getValor());
		assertEquals(BigDecimal.valueOf(7799.0), new ItemCompra(camisa, 110).getValor());
	}
}
