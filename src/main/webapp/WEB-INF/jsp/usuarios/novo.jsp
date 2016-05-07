<link href='<c:url value="/resources/css/login-min.css"/>' rel="stylesheet" />
<div class="container loja">
	<div class="alert alert-danger alert-dismissable">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">
			&times;
		</button>
		${errors.from('usuario.login')}.
	</div>
	<form class="form-signin" id="usuariosForm" action='${linkTo[UsuariosController].adiciona}' method="post">
		<h2 class="form-signin-heading">Criar novo usuário</h2>
		
		<input type="text" class="required form-control" id="nome" name="usuario.nome"  
		placeholder="Seu nome" value="${usuario.nome}" required autofocus>
			   
		<input type="text" class="required form-control" id="login" name="usuario.login"
		placeholder="Nome de usúario" value="${usuario.login}">
			   
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