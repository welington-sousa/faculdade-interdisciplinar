<link href='<c:url value="/resources/css/login.css"/>' rel="stylesheet" />

<div class="container loja">
	<form action='${linkTo[LoginController].autentica}' 
		class="form-signin" method="post">
		<h2 class="form-signin-heading">Fazer login</h2>

		<label for="login" class="sr-only">Login</label>
		<input type="text" name="usuario.login" id="login" 
			class="form-control"
			placeholder="Digite seu login" required autofocus>
			
		<label for="senha" class="sr-only">Password</label>
		<input type="password" name="usuario.senha" id="senha" 
			class="form-control"
			placeholder="Digite sua senha" required>

		<div class="checkbox">
			<label>
				<input type="checkbox" value="remember-me">
				Lembrar minha senha
			</label>
		</div>

		<button class="btn btn-lg btn-primary btn-block" 
			type="submit"> Logar
		</button>
	</form>
</div>

<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
