<div class="container loja">
	<div class="jumbotron">
		<div class="container">
			<h1>Ótima escolha!</h1>
			
			<p>
				Obrigado por comprar na Camisas Criativas! 
				Preencha seus dados para efetivar sua compra.
			</p>
		</div>
	</div>
	
	<div class="col-sm-3 col-md-4 sidebar">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">Sua compra</h2>
			</div>
			<c:forEach items="${carrinho.itens}" var="item" varStatus="s">
				<div class="panel-body">
					<img class="img-thumbnail img-resposive" 
						 src="resources/img/produtos/foto${item.produto.id}-azul.png" 
						 alt="${item.produto.nome}">
	
					<table class="table">
						<dl>
							<dd><b>Produto:</b> <i class="text-info">${item.produto.nome}</i></dd>
	
							<dd><b>Cor:</b> ${cor}</dd>
	
							<dd><b>Tamanho:</b> ${tamanho}</dd>
	
							<dd><b>SubTotal:</b> <i class="text-info"><fmt:formatNumber type="currency" 
								value="${item.produto.preco}" /></i></dd>
							
							<dd><b>Quantidade:</b> <i class="text-info">${item.quantidade}</i></dd>
							
							<dd>
								<b>Total:</b> 
								<i class="text-info"><fmt:formatNumber type="currency" 
								value="${item.quantidade * item.produto.preco}" /></i>
							</dd>
							
							<hr class="featurette-divider" />
							
							<dd>
								<form action='<c:url value="/carrinho/${s.index}" />' method="POST">
									<button class="link btn btn-primary" 
											name="_method" value="DELETE">Excluir do carrinho</button>
								</form>
							</dd>
						</dl>
					</table>		
				</div>
			</c:forEach>
		</div>
	</div>
	
	<div class="col-sm-3 col-md-8 sidebar">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">Dados da compra</h2>
			</div>

			<div class="panel-body">
				<form action="#" method="post">
					<div class="col-sm-3 col-md-6 sidebar">
						<fieldset>
							<legend>Dados pessoais</legend>
							
							<hr class="featurette-divider">

							<div class="form-group">
								<label for="nome">Nome completo</label>
								
								<input class="form-control" type="text" id="nome" name="nome" 
									   placeholder="Digite seu nome" autofocus required>
							</div>

							<div class="form-group">
								<label for="email">Email</label>

								<div class="form-group">
									<input class="form-control" type="email" id="email" name="email" 
										   placeholder="email@example.com" autofocus required>
								</div>
							</div>

							<div class="form-group">
								<label for="cpf">Cpf</label>
								
								<input type="text" data-mask="999.999.999-99" class="form-control" 
									   id="cpf" name="cpf" placeholder="000.000.000-00" autofocus required>
							</div>

							<div class="form-group">
								<label for="endereco">Endereço</label>
								
								<input type="text" class="form-control" id="endereco" name="endereco" 
									   placeholder="Rua Jose Alencar 3245" autofocus required>
							</div>

							<div class="form-group">
								<label for="cep">Cep</label>
								
								<input type="text" data-mask="99999-999" class="form-control" 
									   id="cep" name="cep" placeholder="99999-999" autofocus required>
							</div>

							<div class="form-group">
								<label for="cidade">Cidade</label>
								
								<input type="text" class="form-control" id="cidade" 
									   name="cidade" placeholder="Fortaleza" autofocus required>
							</div>

							<div class="form-group">
								<label for="estado">Estado</label>
								
								<input type="text" class="form-control" id="estado" 
									   name="estado" placeholder="Ceará" autofocus required>
							</div>

						</fieldset>
					</div>

					<div class="col-sm-3 col-md-6 sidebar">
						<fieldset>
							<legend>Cartão de crédito</legend>
							
							<hr class="featurette-divider">
	
							<div class="form-group">
								<label for="numero-cartao">Número do cartão</label> 
								
								<input type="text" data-mask="9999 9999 9999 9999 - 999" 
									   class="form-control" id="numero-cartao" name="numero-cartao" 
									   placeholder="0000 0000 0000 0000" autofocus required>
							</div>
	
							<div class="form-group">
								<label for="bandeira-cartao">Escolha a bandeira</label>
								<select name="bandeira-cartao" id="bandeira-cartao" 
									    class="form-control" autofocus required>
									    
									<option value="master">MasterCard</option>
									<option value="visa">VISA</option>
									<option value="amex">American Express</option>
								</select>
							</div>
	
							<div class="form-group">
								<label for="validade-cartao">Validade do cartão</label> 
								
								<input type="month" class="form-control" id="validade-cartao" 
									   name="validade-cartao" placeholder="Clique aqui para escolher a data" 
									   autofocus required>
							</div>
						</fieldset>
					</div>

					<button type="submit" class="btn btn-primary btn-lg pull-right">
						<span class="glyphicon glyphicon-thumbs-up"></span> Finalizar compra
					</button>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$("#validade-cartao").datepicker({
		dateFormat : 'dd/mm/yy',
		changeMonth : true,
		changeYear : true,
		showWeek : true
	});	
</script>