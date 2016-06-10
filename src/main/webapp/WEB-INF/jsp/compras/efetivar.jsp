<div class="container loja">
	<div class="col-sm-3 col-md-4 sidebar">
		<c:forEach var="error" items="${errors}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">
					&times;
				</button>
				<a href='${linkTo[CamisasController].computacao}' class="alert-link">
					${errors.from('item.quantidade')}.
				</a>
			</div>
		</c:forEach>
		<c:if test="${empty carrinho or carrinho.totalDeItens eq 0 }">
			<div class="alert alert-info">
				<a href='${linkTo[CamisasController].computacao}' class="alert-link">Info! ${msg}.</a>
			</div>
		</c:if>
		<div class="panel panel-default">
			<c:forEach items="${carrinho.itens}" var="item" varStatus="s">
				<div class="panel-body">
					<img class="img-thumbnail img-resposive" src="../resources/img/camisas/estampa${item.camisa.id}-azul.png" alt="${item.camisa.nome}">

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
								<fmt:formatNumber	type="currency" value="${item.quantidade * item.camisa.valorUnitario}" /></i>
							</dd>
						</dl>
					</table>
				</div>
			</c:forEach>
		</div>
	</div>

	<form method="post" action='${linkTo[ComprasController].sucesso}' role="form">
		<div class="col-md-8">
			<h4>Suas informações</h4>
			
			<div class="form-group">
				<input type="email" class="form-control" id="email" placeholder="E-mail" x-moz-errormessage="Email inválido" autofocus required>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<input type="text" id="nome" class="form-control" placeholder="Nome" x-moz-errormessage="O campo nome não pode ser vazio" required>
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
						<input type="text" id="sobrenome" class="form-control" placeholder="Sobrenome" x-moz-errormessage="O campo sobrenome não pode ser vazio" required>
					</div>
				</div>
			</div>

			<div class="form-group">
				<input type="text" class="form-control" id="cpf" placeholder="CPF" data-mask="999.999.999-99" x-moz-errormessage="O campo cpf não pode ser vazio" required>
			</div>

			<h4>Endereço para entrega</h4>
			
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<input type="text" class="form-control" id="cep" name="cep" placeholder="Cep" data-mask="99999-999" x-moz-errormessage="O campo cep não pode ser vazio" required>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<input type="text" class="form-control" id="rua" placeholder="Rua" x-moz-errormessage="O campo rua não pode ser vazio" required>
			</div>
			
			<div class="row">
				<div class="col-md-5">
					<div class="form-group">
						<input type="text" class="form-control" id="bairro" placeholder="Bairro" x-moz-errormessage="O campo bairro não pode ser vazio" required>
					</div>
				</div>

				<div class="col-md-5">
					<div class="form-group">
						<input type="text" class="form-control" id="cidade" placeholder="Cidade" x-moz-errormessage="O campo cidade não pode ser vazio" required>
					</div>
				</div>
  
	  			<div class="col-md-2">
					<div class="form-group">
						<input type="text" id="uf" class="form-control" placeholder="Uf" x-moz-errormessage="O campo uf não pode ser vazio" required>
					</div>
				</div>
			</div>	

			<h4>Cartão de crédito</h4>

			<div class="form-group">
				<input type="text" class="form-control" id="numero-cartao" placeholder="Número" data-mask="9999 9999 9999 9999 - 999" x-moz-errormessage="O campo número do cartão não pode ser vazio" required>
			</div>

			<div class="form-group">
				<select class="form-control" id="bandeira-cartao" name="bandeira-cartao" required>
					<option value="master">MasterCard</option>
					<option value="visa">VISA</option>
					<option value="amex">American Express</option>
				</select>
			</div>

			<div class="form-group">
				<input type="month" name="validade-cartao" id="validade-cartao" class="form-control" placeholder="Clique aqui" x-moz-errormessage="O campo validade do cartão não pode ser vazio" required>
			</div>

			<button class="btn btn-primary btn-lg btn-block" type="submit"><span class="glyphicon glyphicon-thumbs-up"></span> Efetivar Pedido 
			</button>
		</div>
	</form>
</div>
<script type="text/javascript">
	$("#validade-cartao").datepicker({
		dateFormat : 'dd/mm/yy',
		changeMonth : true,
		changeYear : true,
		showWeek : true
	});	
</script>
