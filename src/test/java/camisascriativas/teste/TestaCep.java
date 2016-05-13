package camisascriativas.teste;

import br.com.camisascriativas.controllers.ComprasController;

public class TestaCep {

	public static void main(String[] args) {
		ComprasController controller = new ComprasController();
		
		String cep = "60841220";
		
		controller.buscaEndereco(cep);
	}
}
