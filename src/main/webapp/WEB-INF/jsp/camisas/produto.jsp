<div class="container loja">
	<div class="col-sm-6 col-md-3">
		
	</div>
			
	<div class="col-md-5"></div>

    <form action='${linkTo[CarrinhoController].adiciona}' method="post">
	    <div class="col-md-4">
			<h1>${camisa.nome}</h1>
				
			<p>	apenas <fmt:formatNumber type="currency" value="${camisa.valorUnitario}"/></p>

			<span>
				<input type="radio" checked required id="radio_18088548551" value="18088548551" name="id" class="adicionarCamisetaAoCarrinho-tamanho-radio">
				<label for="radio_18088548551" class="adicionarCamisetaAoCarrinho-tamanho ">P</label>
					
				<input type="radio" checked required id="radio_18088548615" value="18088548615" name="id" class="adicionarCamisetaAoCarrinho-tamanho-radio">
				<label for="radio_18088548615" class="adicionarCamisetaAoCarrinho-tamanho ">M</label>
					
				<input type="radio" checked required id="radio_18088548743" value="18088548743" name="id" class="adicionarCamisetaAoCarrinho-tamanho-radio">
				<label for="radio_18088548743" class="adicionarCamisetaAoCarrinho-tamanho ">G</label>
					
				<input type="radio" checked required id="radio_18088672199" value="18088672199" name="id" class="adicionarCamisetaAoCarrinho-tamanho-radio">
				<label for="radio_18088672199" class="adicionarCamisetaAoCarrinho-tamanho ">GG</label>
			</span>	

			<span>
				<input type="hidden" name="item.camisa.id" value="${camisa.id}"/>
				<input type="hidden" class="form-control" name="item.quantidade" value="1"/>
			</span>
			
			<fieldset class="cores">

				<input type="radio" name="cor" value="verde" id="verde" checked>
				
				<label for="verde"> 
					<img src="../resources/img/camisas/estampa${camisa.id}-verde.png" width="370" height="48" alt="Produto da cor verde" style="position: absolute; left: -350px;">
				</label> 
				
				<input type="radio" name="cor" value="vermelha" id="vermelha"> 
				
				<label for="vermelha"> 
					<img src="../resources/img/camisas/estampa${camisa.id}-vermelha.png" width="370" height="48" alt="Produto da cor vermelha" style="position: absolute; left: -350px;">
				</label>
				
				<input type="radio" name="cor" value="azul" id="azul"> 
				
				<label for="azul"> 
					<img src="../resources/img/camisas/estampa${camisa.id}-azul.png" width="370" height="48" alt="Produto da cor azul" style="position: absolute; left: -350px;">
				</label>
			</fieldset>

			<button class="comprar btn-danger btn-block" type="submit"><span class="glyphicon glyphicon-ok"></span> Carrinho de Compras</button>
		</div>
	</form>	
</div>