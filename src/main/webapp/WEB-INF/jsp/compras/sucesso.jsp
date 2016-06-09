<c:if test="${!empty carrinho or carrinho.totalDeItens != 0 }">
	<c:url var="url" value="viewCart">
        <c:param name="clear" value="true"/>
    </c:url>
</c:if>
<div class="container loja">
	<div class="jumbotron">
		<div class="container">
			<h1>${msg}.</h1>

			<p>Obrigado por comprar na Camisas Criativas!</p>
		</div>
	</div>
</div>