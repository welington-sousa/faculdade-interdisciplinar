<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container loja">
	<section class="secao novidades">
		<ol>
			<c:forEach var="camisa" items="${camisaList}">
				<li>
					<figure>
						<a href='<c:url value="/camisas/${camisa.id}"/>'> 
							<img title="${camisa.nome}" alt="${camisa.nome}" 
								 src="resources/img/produtos/miniatura${camisa.id}.png">
								 
							<figcaption>
								${camisa.nome} por <fmt:formatNumber type="currency" 
								value="${camisa.preco}" />
							</figcaption>
						</a>
					</figure>
				</li>
			</c:forEach>
		</ol>
	</section>

	<section class="secao promocoes">
		<ol>
			<c:forEach var="camisa" items="${camisaList}">
				<li>
					<figure>
						<a href='<c:url value="/camisas/${camisa.id}"/>'> 
							<img title="${camisa.nome}" alt="${camisa.nome}" 
								 src="resources/img/produtos/miniatura${camisa.id}.png">
								 
							<figcaption>
								${camisa.nome} por <fmt:formatNumber type="currency" 
								value="${camisa.preco}" />
							</figcaption>
						</a>
					</figure>
				</li>
			</c:forEach>
		</ol>
	</section>
</div>