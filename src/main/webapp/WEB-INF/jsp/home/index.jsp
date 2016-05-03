<div class="container loja">
	<div id="usuario" class="jumbotron">
	    <h1>Bem vindo, a Camisas Criativas</h1>
	    
	    <p class="lead">
	    	<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
	    		${msg}
	    	</c:if>	
	    </p>
		
		<p>
			<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
				<a role="button" href='${linkTo[UsuariosController].novo}' 
				    class="btn btn-lg btn-success">
				    <span class="glyphicon glyphicon-hand-right"></span>
					Cadastre-se
				</a>
			</c:if>
		</p>
	</div>
</div>