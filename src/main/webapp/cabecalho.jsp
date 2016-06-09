<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Camisas Criativas ${camisa.nome}</title>
		
		<link href='<c:url value="/resources/css/loja.css"/>' rel="stylesheet" /> 
		<link href='<c:url value="/resources/css/bootstrap.min.css"/>' rel="stylesheet" />
		<link href='<c:url value="/resources/css/jquery-ui.css"/>' rel="stylesheet" />
		
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
		<link href='<c:url value="/resources/css/ie10-viewport-bug-workaround.css"/>' rel="stylesheet" />
		
		<!-- icone do topo -->
		<link href='<c:url value="/resources/img/logo.png"/>' rel="shortcut icon" sizes="144x144" />
		
		<script src='<c:url value="/resources/js/ie-emulation-modes-warning.js"/>'></script>
		
		<script src='<c:url value="/resources/js/jquery.min.js"/>'></script>
		<script src='<c:url value="/resources/js/jquery-ui.js"/>'></script>
		<script src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
		<script src='<c:url value="/resources/js/inputmask-plugin.js"/>'></script>
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
					<a href='${linkTo[HomeController].index}' class="navbar-brand">
						<span title="camisas criativas"> Camisas Criativas</span>
					</a>
					<a href='${linkTo[CamisasController].musicas}' class="navbar-brand">
						<span class="glyphicon glyphicon-music"> Música</span>
					</a>
					<a href='${linkTo[CamisasController].computacao}' class="navbar-brand">
						<span class="glyphicon glyphicon-qrcode"> Computação</span>
					</a>
			    </div>
			    <div class="navbar-collapse collapse" id="navbar">
					<ul class="nav navbar-nav navbar-right">
						<li>
					  		<a class="navbar-brand" title="carrinho de compras" href='${linkTo[CarrinhoController].checkout}'>
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
					     	<a class="navbar-brand" href="#">
							 	<span>
									<span class="glyphicon glyphicon-road"></span> <small>Frete grátis para todo o Brasil</small>
								</span>
							</a>
						 </li>
					 </ul>
					<form class="navbar-form navbar-right" action='<c:url value="/camisas/busca" />'>
						<input type="search" class="form-control" name="nome" id="busca" placeholder="Buscar Produtos" required>
					</form>
			    </div>
		  	</div>
		</nav>
    
    <script src='<c:url value="/resources/js/holder.min.js"/>'></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
    <script src='<c:url value="/resources/js/ie10-viewport-bug-workaround.js"/>'></script>
    <script src='<c:url value="/resources/js/home.js"/>'></script>	
	</body>
</html>