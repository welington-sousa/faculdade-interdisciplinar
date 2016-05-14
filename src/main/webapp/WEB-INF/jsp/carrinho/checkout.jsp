<div class="container loja">
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
	<c:forEach items="${carrinho.itens}" var="item" varStatus="s">	
		<table class="table">
		
			<thead>
				<tr>
					<th>Produto</th>
					<th>Item</th>
					<th>Preço</th>
					<th>Qtd</th>
					<th>Total</th>
					<th>Ação</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>
						<a href="/produtos/{produto.id}">
							<img width="70" height="85" class="img-thumbnail img-resposive" 
							src="resources/img/produtos/foto${item.produto.id}-azul.png" alt="${item.produto.nome}">
						</a>
					</td>
					<td class="table-carrinho-item">${item.produto.nome}</td>
					<td class="table-carrinho-item"><fmt:formatNumber type="currency" value="${item.produto.preco}" /></td>
					<td class="table-carrinho-item">
						<input type="hidden" name="item.produto.id" value="${camisa.id}" />
						<input style="width: 18%; display: inherit;" class="form-control" name="item.quantidade" value="1" required type="number">
					</td>
					<td class="table-carrinho-item"><fmt:formatNumber type="currency" value="${item.quantidade * item.valor}" /></td>
					<td class="table-carrinho-item">
						<form action='<c:url value="/carrinho/${s.index}" />' method="POST">
							<button class="comprar btn-danger" data-toggle="modal" data-target="#myModal">
								<span class="glyphicon glyphicon-trash"></span>
							</button>
									
							<!-- Modal -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">Remover item</h4>
										</div>
										<div class="modal-body">Tem certeza que deseja remover o item do carrinho</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
											<button class="btn btn-primary" name="_method" value="DELETE">Sim</button>
										</div>
									</div><!-- /.modal-content -->
								</div>
							</div><!-- /.modal -->
						</form>
					</td>	
				</tr>
			</tbody>
			
			<tfoot>
				<tr class="table-carrinho-item">
					<td colspan="3">
						<a title="efetivar" href='${linkTo[ComprasController].efetivar}'>
							<button class="btn btn-default" type="submit">
						  		<img src="resources/img/sacola.png" class="first-slide"> Finalizar compra
							</button>
						</a>	
					</td>
					<td>
						<button class="btn btn-default" data-toggle="modal" data-target="#modalCalcularFrete">
						  <img class="first-slide" src="resources/img/caminhao.png"> <small>Calcular Frete</small>
						</button>
								
						<!-- Modal -->
						<div class="modal fade" id="modalCalcularFrete" tabindex="-1" role="dialog"
							aria-labelledby="modalCalcularFreteLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="modalCalcularFreteLabel">Consulte o prazo de entrega</h4>
									</div>
									<div class="modal-body">
										<nav class="navbar navbar-default" role="navigation">
											<div class="navbar-header">
												<small>Informe o CEP para consultar o prazo de entrega:</small>
											</div>
											<div>
												<form class="navbar-form navbar-left" role="search">
													<div class="form-group">
														<input type="text" class="form-control" placeholder="Cep">
													</div>
													<button type="submit" class="btn btn-default">Calcular</button>
												</form>
											</div>
										</nav>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
										<button class="btn btn-primary" name="_method" value="DELETE">Sim</button>
									</div>
								</div><!-- /.modal-content -->
							</div>
						</div><!-- /.modal -->
					</td>
					<td><fmt:formatNumber type="currency" value="${item.produto.preco}" /></td>
					<td></td> 
				</tr>
			</tfoot>
		</table>
	</c:forEach>
</div>