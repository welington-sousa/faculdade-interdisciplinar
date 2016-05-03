<div class="container loja">
	<div class="produto">
		<h1>${produto.nome}</h1>

		<p>
			por apenas
			<fmt:formatNumber type="currency" 
			value="${produto.preco}" />
		</p>

		<form action='${linkTo[CarrinhoController].adiciona}' method="post">
			<fieldset class="cores">
			
				<legend>Escolha a cor:</legend>

				<input type="radio" name="cor" value="verde" id="verde" checked>
				
				<label for="verde"> 
					<img src="../resources/img/produtos/foto${produto.id}-verde.png"
						 width="370" height="484" 
						 alt="Produto da cor verde">
				</label> 
				
				<input type="radio" name="cor" value="rosa" id="rosa"> 
				
				<label for="rosa"> 
					<img src="../resources/img/produtos/foto${produto.id}-rosa.png" 
						 width="370" height="484"
						 alt="Produto da cor rosa">
				</label>
				
				<input type="radio" name="cor" value="azul" id="azul"> 
				
				<label for="azul"> 
					<img src="../resources/img/produtos/foto${produto.id}-azul.png" 
						 width="370" height="484"
						 alt="Produto da cor azul">
				</label>
			</fieldset>

			<fieldset class="tamanhos">

				<legend>Escolha o tamanho:</legend>

				<input type="range" min="36" max="46" value="42" step="2" name="tamanho" id="tamanho">
				<output for="tamanho" name="valortamanho">42</output>
			</fieldset>
			
			<fieldset>
				<legend>Quantidade:</legend>
			
				<input type="hidden" name="item.produto.id" value="${produto.id}" />
				<input type="number" class="form-control" name="item.quantidade" value="1" required />
			</fieldset>
			
			<button type="submit" class="comprar">
				<span class="glyphicon glyphicon-ok"></span> Comprar
			</button>
		</form>
	</div>

	<div class="detalhes">
		<h2>Detalhes do Produto</h2>

		<p>${produto.descricao}</p>

		<table class="table">
			<thead>
				<tr>
					<th>Característica</th>
					<th>Detalhe</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Modelo</td>
					<td>Cardigã 7845</td>
				</tr>
				<tr>
					<td>Material</td>
					<td>Algodão e poliester</td>
				</tr>
				<tr>
					<td>Cores</td>
					<td>Azul, Rosa e Verde</td>
				</tr>
				<tr>
					<td>Lavagem</td>
					<td>Lavar a mão</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript">
	$('[name=valortamanho]').val($('[name=tamanho]').val());
	
	$('[name=tamanho]').on('input', function() {
		$('[name=valortamanho]').val(this.value);
	});
</script>
