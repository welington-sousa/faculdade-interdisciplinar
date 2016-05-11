<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Camisas Criativas ${camisa.nome}</title>
		
		<link href='<c:url value="/resources/css/loja-min.css"/>' rel="stylesheet" />
		<link href='<c:url value="/resources/css/bootstrap.min.css"/>' rel="stylesheet" />
		
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<link href='<c:url value="/resources/css/ie10-viewport-bug-workaround.css"/>' rel="stylesheet" />
		
		<!-- icone do topo -->
		<link href='<c:url value="/resources/img/logo.png"/>' rel="shortcut icon" sizes="144x144" />
		
		<script src='<c:url value="/resources/js/ie-emulation-modes-warning.js"/>'></script>
	</head>
	
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  	<div class="container-fluid">
			    <div class="navbar-header">
			      <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a href='${linkTo[HomeController].index}' class="navbar-brand">Camisas Criativas</a>
			    </div>
			    <div class="navbar-collapse collapse" id="navbar">
			      <ul class="nav navbar-nav navbar-right">
			        <li>
			        	<a title="carrinho de compras" href='${linkTo[CarrinhoController].checkout}'>
							<c:if test="${empty carrinho or carrinho.totalDeItens eq 0 }">
								<b>0</b>
								<span class="glyphicon glyphicon-shopping-cart"></span>
							</c:if>
							<c:if test="${carrinho.totalDeItens > 0}"> 
								<b>${carrinho.totalDeItens}</b>
								<span class="glyphicon glyphicon-shopping-cart"></span>
							</c:if>
						</a>
			        </li>
			        <li class="active">
						<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
							<li class="active">
									
								<a href='#' title="logar no sistema" class="dropdown-toggle" data-toggle="dropdown"> 
									<i class="glyphicon glyphicon-user"></i> Você não está logado
									<span class="caret"></span>
								</a>
								
								<ul class="dropdown-menu">
									<li>
										<a title="entrar" href='${linkTo[LoginController].loginForm}'>
											<span class="glyphicon glyphicon-log-in"></span>
										</a>
									</li>
								</ul>
							</li>		
						</c:if>	
	
						<c:if test="${usuarioLogado.logado}">
							<li class="active">
									
								<a href='#' title="logar no sistema" class="dropdown-toggle" data-toggle="dropdown"> 
									<i class="glyphicon glyphicon-user"></i> Olá, ${usuarioLogado.nome}
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a title="sair" href='${linkTo[LoginController].sair}'>
											<span class="glyphicon glyphicon-log-out"></span>
										</a>
									</li>
								</ul>	
							</li>
						</c:if>
					</li>
			        <li>
			        	<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
							<a role="button" href='${linkTo[UsuariosController].novo}'> Cadastre-se
							</a>
						</c:if>
			        </li>
			      </ul>
			      <form class="navbar-form navbar-right">
			        <input type="text" placeholder="Search..." class="form-control">
			      </form>
			    </div>
		  	</div>
		</nav>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js'></script>
    <script>window.jQuery || document.write('<script src="/resources/jquery.min.js"><\/script>')</script>
    <script src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script src='<c:url value="/resources/js/holder.min.js"/>'></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src='<c:url value="/resources/js/ie10-viewport-bug-workaround.js"/>'></script>	
	</body>
</html>