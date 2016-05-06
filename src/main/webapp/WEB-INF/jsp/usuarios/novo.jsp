<link href='<c:url value="/resources/css/login-min.css"/>' rel="stylesheet" />
<div class="container loja">
	<form class="form-signin" id="usuariosForm" action='<c:url value="/usuarios" />' method="post">
		<h2 class="form-signin-heading">Criar novo usuário</h2>
		
		<input type="text" class="required form-control" id="nome" name="usuario.nome"  
		placeholder="Seu nome" value="${usuario.nome}" required autofocus>
			   
		<input type="text" class="required form-control" id="login" name="usuario.login"
		placeholder="Nome de usúario" value="${usuario.login}" required>
			   
		<input type="password" class="required form-control" id="senha" name="usuario.senha"   
		placeholder="Senha" value="${usuario.senha}" required>
			   
		<input type="password" class="form-control" equalTo="#senha"  id="confirmacao" 
		placeholder="Confirme a senha" required>
		
		<button class="btn btn-lg btn-danger btn-block" type="submit"> Enviar</button>	   
	</form>
</div>
<script>
	$('#usuariosForm').validate();
</script>