<link href='<c:url value="/resources/css/login-min.css"/>' rel="stylesheet" />
<div class="container loja">
	<form action='${linkTo[LoginController].autentica}' class="form-signin" method="post">
		<h2 class="form-signin-heading">Efetuar login</h2>

		<input type="text" name="usuario.login" class="form-control required"
		placeholder="Nome de usuário" autofocus>
		<span class="alert text-danger">${errors.from('usuario.login')}</span>
			
		<input type="password" name="usuario.senha" id="senha" class="form-control"
		placeholder="Senha">
		<span class="alert text-danger">${errors.from('usuario.senha')}</span>

		<button class="btn btn-lg btn-default btn-block" type="submit">Logar</button>
	</form>
</div>
