<div class="container loja">
	<div class="col-sm-6 col-md-3">
		<a class="thumbnail" href="#">
		<img src="../resources/img/produtos/foto${produto.id}-verde.png" 
    	width="370" height="484" alt="Camisa">
		</a>
	</div>
			
	<div class="col-md-5">
    	<img src="../resources/img/produtos/foto${produto.id}-verde.png" 
    	width="370" height="484" alt="Camisa">
    </div>

    <form action='${linkTo[CarrinhoController].adiciona}' method="post">
	    <div class="col-md-4">
			<h1>${produto.nome}</h1>
				
			<p>	apenas <fmt:formatNumber type="currency" value="${produto.preco}" /></p>

			<fieldset class="tamanhos">
				<output name="valortamanho" for="tamanho">P</output>
	  			<output name="valortamanho" for="tamanho">M</output>
	  			<output name="valortamanho" for="tamanho">G</output>
	  			<output name="valortamanho" for="tamanho">GG</output>
			</fieldset>

			<fieldset>
				<input type="hidden" name="item.produto.id" value="${produto.id}" />
				<input type="number" class="form-control" name="item.quantidade" value="1" required />
			</fieldset>

			<button class="comprar btn-danger btn-block" type="submit">
				<span class="glyphicon glyphicon-ok"></span> 
				Carrinho de Compras
			</button>
		</div>
	</form>	
</div>