package br.com.camisascriativas.validators;

import javax.inject.Inject;

import br.com.caelum.vraptor.validator.I18nMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.camisascriativas.models.Item;

public class CarrinhoValidator {

	@Inject private Validator validator;

	public void validate(Item item) {
		validator.validate(item);

		if (item.getQuantidade() <= 0) {
			validator.add(new I18nMessage("item.quantidade",
					"precisa.ter.numero.positivo"));
		}
	}

	public <T> T onErrorRedirectTo(T controller) {
		return validator.onErrorRedirectTo(controller);
	}
}
