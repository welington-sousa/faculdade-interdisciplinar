<link href='<c:url value="/resources/css/login.css"/>' rel="stylesheet" />

<div class="container loja">
	<form class="form-signin" id="usuariosForm" 
		action='<c:url value="/usuarios" />' 
		method="post">
		<h2 class="form-signin-heading">Criar novo usuário</h2>
		
		<label for="nome" class="sr-only">Nome</label>
		<input type="text" class="required form-control" 
			id="nome" name="usuario.nome"  
			placeholder="Digite seu nome" 
			value="${usuario.nome}" required autofocus>
			   
		<label for="login" class="sr-only">Login</label>
		<input type="text" class="required form-control" id="login"  
			name="usuario.login" placeholder="Digite seu login" 
			value="${usuario.login}" required>
			   
		<label for="senha" class="sr-only">Senha</label>
		<input type="password" class="required form-control" id="senha"   
			   name="usuario.senha" placeholder="Digite a senha" 
			   value="${usuario.senha}" required>
			   
		<label for="confirmacao" class="sr-only">
			Confirme a senha
		</label>
		<input type="password" class="form-control" 
			equalTo="#senha"  id="confirmacao" 
			placeholder="Repita a senha" required>
		
		<button class="btn btn-lg btn-primary btn-block" 
			type="submit"> Enviar
		</button>	   
	</form>
</div>

<script>
	$('#usuariosForm').validate();
</script>