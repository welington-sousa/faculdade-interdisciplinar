<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>Camisas Criativas ${produto.nome}</title>
	
	<link href='<c:url value="/resources/css/loja.css"/>' rel="stylesheet" />
	<link href='<c:url value="/resources/css/jquery-ui.css"/>' rel="stylesheet" />
	<link href='<c:url value="/resources/css/bootstrap.css"/>' rel="stylesheet" />
	
	<!-- icone do topo -->
	<link href='<c:url value="/resources/img/logo.png"/>' rel="shortcut icon" sizes="144x144" />
	
	<script src='<c:url value="/resources/js/jquery.min.js"/>'></script>
	<script src='<c:url value="/resources/js/jquery-ui.js"/>'></script>
	<script src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
	<script src='<c:url value="/resources/js/inputmask-plugin.js"/>'></script>
</head>
<body>
	<div class="container">
		<header class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
							data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					
					<a class="navbar-brand" href="#">Camisas Criativas</a>
				</div>
		
				<div>
					<ul class="nav navbar-nav">
						<li class="dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<span class="glyphicon glyphicon-home"></span>
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href='<c:url value="/produtos" />'>
									<span class="glyphicon glyphicon-list-alt"></span>
									Roupas Femininas</a></li>
								<li><a href="#">
									<span class="glyphicon glyphicon-list-alt"></span>
									Roupas Masculinas</a></li>
								<li><a href="#">
									<span class="glyphicon glyphicon-list-alt"></span>
									Roupas Infatis</a></li>
								<li class="divider"></li>
								<li><a href='<c:url value="/" />'>
									<span class="glyphicon glyphicon-home"></span>
									Inicio </a></li>
							</ul>
						</li>
					</ul>
				</div>
		
				<div id="carrinho login" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a title="carrinho de compras" href='<c:url value="/carrinho"/>'>
								<c:if test="${empty carrinho or carrinho.totalDeItens eq 0 }">
									0
									<span class="glyphicon glyphicon-shopping-cart"></span>
								</c:if>
								<c:if test="${carrinho.totalDeItens > 0}"> 
									${carrinho.totalDeItens}
									<span class="glyphicon glyphicon-shopping-cart"></span>
								</c:if>
							</a>
						</li>							
						<li class="active">
							<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
								<li class="active">
										
									<a href='#' title="logar no sistema" class="dropdown-toggle" data-toggle="dropdown"> 
										<i class="glyphicon glyphicon-user"></i> UserName
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
										<i class="glyphicon glyphicon-user"></i> ${usuarioLogado.nome}
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
					</ul>
		
					<form action="http://www.google.com.br/search" target="brank" class="navbar-form navbar-right">
						<input type="search" class="form-control" id="busca" placeholder="Busca..." required>
					</form>
				</div>
			</div>
		</header>
	</div>
</body>
</html>