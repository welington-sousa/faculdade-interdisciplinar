<link href='<c:url value="/resources/css/login-min.css"/>' rel="stylesheet" />
<div class="container loja">
	<c:forEach var="error" items="${errors}">
		<li class="alert alert-danger">${error.message}.</li>
	</c:forEach>
	<form action='${linkTo[LoginController].autentica}' class="form-signin" method="post">
		<h2 class="form-signin-heading">Efetuar login</h2>

		<input type="text" name="usuario.login" class="form-control required"
		placeholder="Nome de usuário" autofocus>
			
		<input type="password" name="usuario.senha" id="senha" class="form-control"
		placeholder="Senha">

		<button class="btn btn-lg btn-danger btn-block" type="submit">Logar</button>
	</form>
</div>
