<div class="container loja">
	<div class="col-sm-3 col-md-4 sidebar">
		<c:forEach var="error" items="${errors}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">
					&times;
				</button>
				<a href='${linkTo[CamisasController].camisas}' class="alert-link">
					${errors.from('item.quantidade')}.
				</a>
			</div>
		</c:forEach>
		<c:if test="${empty carrinho or carrinho.totalDeItens eq 0 }">
			<div class="alert alert-info">
				<a href='${linkTo[CamisasController].camisas}' class="alert-link">Info! ${msg}.</a>
			</div>
		</c:if>
		<div class="panel panel-default">
			<c:forEach items="${carrinho.itens}" var="item" varStatus="s">
				<div class="panel-body">
					<img class="img-thumbnail img-resposive" src="resources/img/camisas/estampa${item.camisa.id}-azul.png" alt="${item.camisa.nome}">

					<table class="table">
						<dl>
							<dd>
								<b>SubTotal </b> 
								<i class="text-info">
								<fmt:formatNumber type="currency" value="${item.camisa.valorUnitario}" /></i>
							</dd>
							<dd>
								<b>Total </b>
								<i class="text-info">
								<fmt:formatNumber	type="currency" value="${item.quantidade 
								* item.camisa.valorUnitario}" /></i>
							</dd>
						</dl>
					</table>
				</div>
			</c:forEach>
		</div>
	</div>

	<form method="post" action="/camisascriativas/pagamento/finalizado" role="form">
		<div class="col-md-8">
			<h4>Suas informações</h4>
			
			<div class="form-group">
				<input type="text" class="form-control" id="email" placeholder="E-mail" autofocus>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<input type="text" required id="nome" class="form-control"
						placeholder="Nome">
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
						<input type="text" required id="sobrenome" class="form-control"
						placeholder="Sobrenome" >
					</div>
				</div>
			</div>

			<div class="form-group">
				<input type="text" class="form-control" id="cpf" placeholder="CPF" data-mask="999.999.999-99">
			</div>

			<h4>Endereço para entrega</h4>
			
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<input type="text" data-mask="99999-999" class="form-control" id="cep" name="cep" placeholder="Cep" required>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<input type="text" class="form-control" id="rua" placeholder="Rua" required>
			</div>
			
			<div class="row">
				<div class="col-md-5">
					<div class="form-group">
						<input type="text" class="form-control" id="bairro" placeholder="Bairro">
					</div>
				</div>

				<div class="col-md-5">
					<div class="form-group">
						<input type="text" class="form-control" id="cidade" placeholder="Cidade">
					</div>
				</div>
  
	  			<div class="col-md-2">
					<div class="form-group">
						<input type="text" required id="uf" class="form-control" placeholder="Uf">
					</div>
				</div>
			</div>	

			<h4>Cartão de crédito</h4>

			<div class="form-group">
				<input type="text" class="form-control" id="numero-cartao" 
				placeholder="Número" data-mask="9999 9999 9999 9999 - 999">
			</div>

			<div class="form-group">
				   <select required class="form-control" id="bandeira-cartao" name="bandeira-cartao">
					<option value="master">MasterCard</option>
					<option value="visa">VISA</option>
					<option value="amex">American Express</option>
				</select>
			</div>

			<div class="form-group">
				<input type="month" required placeholder="Clique aqui"
				name="validade-cartao" id="validade-cartao" class="form-control date">
			</div>

			<button class="btn btn-primary btn-lg btn-block" type="submit">
				<span class="glyphicon glyphicon-thumbs-up"></span> Efetivar Pedido 
			</button>
		</div>
	</form>
</div>

