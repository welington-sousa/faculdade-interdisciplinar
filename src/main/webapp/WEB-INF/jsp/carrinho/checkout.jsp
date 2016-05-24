<div class="container loja">
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
	<table class="table">
	
		<thead>
			<tr>
				<th>Camisa</th>
				<th>Nome</th>
				<th>Valor unitário</th>
				<th>Qtd</th>
				<th>Total</th>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${carrinho.itens}" var="item" varStatus="s">
				<tr>
					<td>
						<img width="70" height="85" class="img-thumbnail img-resposive" src="resources/img/camisas/estampa${item.camisa.id}-${item.cor.verde}.png" alt="${item.camisa.nome}">
					</td>
					<td class="table-carrinho-item">${item.camisa.nome}</td>
					<td class="table-carrinho-item"><fmt:formatNumber type="currency" value="${item.camisa.valorUnitario}"/></td>
					<td class="table-carrinho-item">
						<input type="hidden" name="item.camisa.id" value="${camisa.id}"/>
						<input style="width: 25%; display: inherit;" class="form-control" name="item.quantidade" value="1" required type="number">
					</td>
					<td class="table-carrinho-item"><fmt:formatNumber type="currency" value="${item.quantidade * item.camisa.valorUnitario}"/></td>
					<td align="center" class="table-carrinho-item">
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
			</c:forEach>
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
					<button data-target="#modalCalcularFrete" data-toggle="modal" class="btn btn-default">
				    	<span class="glyphicon glyphicon-refresh"></span> Atualizar Total
					</button>
				</td>
				<td><p></p><fmt:formatNumber type="currency" value="${item.quantidade * item.valor}"/></td>
				<td></td> 
			</tr>
		</tfoot>
	</table>
</div>