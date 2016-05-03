<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container loja">
	<section class="secao novidades">
		<h2>Novidades</h2>

		<ol>
			<c:forEach items="${produtoList}" var="produto">
				<li>
					<figure>
						<a href='<c:url value="/produtos/${produto.id}"/>'> 
							<img title="${produto.nome}" alt="${produto.nome}" 
								 src="resources/img/produtos/miniatura${produto.id}.png">
								 
							<figcaption>
								${produto.nome} por <fmt:formatNumber type="currency" 
								value="${produto.preco}" />
							</figcaption>
						</a>
					</figure>
				</li>
			</c:forEach>
		</ol>
	</section>

	<section class="secao promocoes">
		<h2>Promoções</h2>

		<ol>
			<c:forEach items="${produtoList}" var="produto">
				<li>
					<figure>
						<a href='<c:url value="/produtos/${produto.id}"/>'> 
							<img title="${produto.nome}" alt="${produto.nome}" 
								 src="resources/img/produtos/miniatura${produto.id}.png">
								 
							<figcaption>
								${produto.nome} por <fmt:formatNumber type="currency" 
								value="${produto.preco}" />
							</figcaption>
						</a>
					</figure>
				</li>
			</c:forEach>
		</ol>
	</section>
</div>