<link href='<c:url value="/resources/css/login-min.css"/>' rel="stylesheet" />
<div class="container loja">
	<c:forEach var="error" items="${errors}">
		<li class="alert alert-danger">Op�, ${error.category} - ${error.message}.</li>
	</c:forEach>
	<form class="form-signin" id="usuariosForm" action='${linkTo[UsuariosController].adiciona}' method="post">
		<h2 class="form-signin-heading">Criar novo usu�rio</h2>
		
		<input type="text" class="required form-control" id="nome" name="usuario.nome"  
		placeholder="Seu nome" value="${usuario.nome}" required autofocus>
			   
		<input type="text" class="required form-control" id="login" name="usuario.login"
		placeholder="Nome de us�ario" value="${usuario.login}" required>
			   
		<input type="password" class="required form-control" id="senha" name="usuario.senha"   
		placeholder="Senha" value="${usuario.senha}" required>
			   
		<input type="password" class="form-control" equalTo="#senha"  id="confirmacao" 
		placeholder="Confirme a senha" required>
		
		<button class="btn btn-lg btn-default btn-block" type="submit"> Enviar</button>	   
	</form>
</div>
<script>
	$('#usuariosForm').validate();
</script>