<div class="container loja">
	<div class="col-sm-6 col-md-3">
		<a class="thumbnail" href="#">
		<img style="height: auto;" width="370" height="484" alt="Camisa" 
		src="../resources/img/produtos/foto${camisa.id}-verde.png">
		</a>
	</div>
			
	<div class="col-md-5">
    	<img src="../resources/img/produtos/foto${camisa.id}-verde.png" 
    	width="370" height="484" alt="Camisa">
    </div>

    <form action='${linkTo[CarrinhoController].adiciona}' method="post">
	    <div class="col-md-4">
			<h1>${camisa.nome}</h1>
				
			<p>	apenas <fmt:formatNumber type="currency" value="${camisa.preco}" /></p>

			<span>
				<input type="radio" checked required id="radio_18088548551" value="18088548551" name="id" class="adicionarCamisetaAoCarrinho-tamanho-radio">
				<label for="radio_18088548551" class="adicionarCamisetaAoCarrinho-tamanho ">
					P
				</label>
					
				<input type="radio" checked required id="radio_18088548615" value="18088548615" name="id" class="adicionarCamisetaAoCarrinho-tamanho-radio">
				<label for="radio_18088548615" class="adicionarCamisetaAoCarrinho-tamanho ">
					M
				</label>
					
				<input type="radio" checked required id="radio_18088548743" value="18088548743" name="id" class="adicionarCamisetaAoCarrinho-tamanho-radio">
				<label for="radio_18088548743" class="adicionarCamisetaAoCarrinho-tamanho ">
					G
				</label>
					
				<input type="radio" checked required id="radio_18088672199" value="18088672199" name="id" class="adicionarCamisetaAoCarrinho-tamanho-radio">
				<label for="radio_18088672199" class="adicionarCamisetaAoCarrinho-tamanho ">
					GG
				</label>
			</span>	

			<fieldset>
				<input type="hidden" name="item.produto.id" value="${camisa.id}" />
				<input type="number" class="form-control" name="item.quantidade" value="1" required />
			</fieldset>

			<button class="comprar btn-default btn-block" type="submit">
				<span class="glyphicon glyphicon-ok"></span> 
				Carrinho de Compras
			</button>
		</div>
	</form>	
</div>