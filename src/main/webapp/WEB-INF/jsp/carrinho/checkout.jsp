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
					<img class="img-thumbnail img-resposive"
						src="resources/img/produtos/foto${item.produto.id}-azul.png"
						alt="${item.produto.nome}">

					<table class="table">
						<dl>
							<hr class="featurette-divider"/>
							<dd>
								<b>SubTotal </b> 
								<i class="text-info">
								<fmt:formatNumber type="currency" value="${item.produto.preco}" /></i>
							</dd>
							<hr class="featurette-divider"/>
							<dd>
								<b>Total </b>
								<i class="text-info">
								<fmt:formatNumber	type="currency" value="${item.quantidade 
								* item.produto.preco}" /></i>
							</dd>
							<dd>
								<form action='<c:url value="/carrinho/${s.index}" />' method="POST">
									<button class="comprar btn-danger" name="_method" value="DELETE">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</form>
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
				<input type="text" class="form-control" id="email" placeholder="E-mail" autofocus="" >
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<input type="text" required="" id="nome" class="form-control"
						placeholder="Nome">
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
						<input type="text" required="" id="sobrenome" class="form-control"
						placeholder="Sobrenome" >
					</div>
				</div>
			</div>

			<div class="form-group">
				<input type="text" class="form-control" id="cpf" placeholder="CPF" data-mask="999.999.999-99">
			</div>

			<h4>Endereço para entrega</h4>

			<div class="form-group">
				<input type="text" class="form-control" id="endereco" placeholder="Endereço (com número)">
			</div>

			<div class="form-group">
				<input type="text" class="form-control" id="cidade" placeholder="Cidade">
			</div>

			<h4>Cartão de crédito</h4>

			<div class="form-group">
				<input type="text" class="form-control" id="numero-cartao" 
				placeholder="Número" data-mask="9999 9999 9999 9999 - 999">
			</div>

			<div class="form-group">
				   <select required="" class="form-control" id="bandeira-cartao" name="bandeira-cartao">
					<option value="master">MasterCard</option>
					<option value="visa">VISA</option>
					<option value="amex">American Express</option>
				</select>
			</div>

			<div class="form-group">
				<input type="month" required="" placeholder="Clique aqui" name="validade-cartao" id="validade-cartao" class="form-control hasDatepicker">
			</div>

			<button class="btn btn-primary btn-lg btn-block" type="submit">
				<span class="glyphicon glyphicon-thumbs-up"></span> Finalizar compra
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