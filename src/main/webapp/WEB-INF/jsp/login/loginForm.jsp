<link href='<c:url value="/resources/css/login-min.css"/>' rel="stylesheet" />

<div class="container loja">
	<form action='${linkTo[LoginController].autentica}' class="form-signin" method="post">
		<h2 class="form-signin-heading">Efetuar login</h2>

		<input type="text" name="usuario.login" id="login" class="form-control"
		placeholder="Nome de usuário" autofocus>
			
		<input type="password" name="usuario.senha" id="senha" class="form-control"
		placeholder="Digite sua senha">

		<button class="btn btn-lg btn-danger btn-block" type="submit">Logar</button>
	</form>
</div>
