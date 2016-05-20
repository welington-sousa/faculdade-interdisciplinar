<div class="container-fluid loja">
	<div class="row">
		<div class="col-md-2 col-sm-offset-1">
			<div class="form-group">
					<ul class="nav nav-sidebar">
          	<li class="active"><a href="#"><span class="glyphicon glyphicon-list"></span> Categorias</a></li>
            <li><a href='${linkTo[CamisasController].musicas}'>Música</a></li>
            <li><a href='${linkTo[CamisasController].computacao}'>Computação</a></li>
        	</ul>
			</div>
		</div>
	
		<div class="col-md-8">
			<div class="form-group">
				<section class="secao novidades">
					<ol>
						<c:forEach var="camisa" items="${camisaList}"> 
							<li>
								<figure>
									<a href='<c:url value="/camisas/${camisa.id}"/>'> 
										<img width="200" height="245" title="${camisa.nome}" alt="${camisa.nome}" 
											 src="../resources/img/camisas/modelo${camisa.id}.png">
											 
										<h4>${camisa.nome} por <fmt:formatNumber type="currency" 
												value="${camisa.valorUnitario}" />
										</h4>
									</a>
								</figure>
							</li>
						</c:forEach>
					</ol>
				</section>
			</div>
		</div>
	</div>
</div>