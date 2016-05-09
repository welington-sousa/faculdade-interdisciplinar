<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Camisas Criativas ${camisa.nome}</title>
		
		<link href='<c:url value="/resources/css/loja-min.css"/>' rel="stylesheet" />
		<link href='<c:url value="/resources/css/jquery-ui-min.css"/>' rel="stylesheet" />
		<link href='<c:url value="/resources/css/bootstrap.min.css"/>' rel="stylesheet" />
		
		<!-- icone do topo -->
		<link href='<c:url value="/resources/img/logo.png"/>' rel="shortcut icon" sizes="144x144" />
		
		<script src='<c:url value="/resources/js/jquery.min.js"/>'></script>
		<script src='<c:url value="/resources/js/jquery-ui-min.js"/>'></script>
		<script src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
		<script src='<c:url value="/resources/js/inputmask-plugin-min.js"/>'></script>
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
		      <a href="#" class="navbar-brand">Camisas Criativas</a>
		    </div>
		    <div class="navbar-collapse collapse" id="navbar">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="#">Dashboard</a></li>
		        <li><a href="#">Settings</a></li>
		        <li><a href="#">Profile</a></li>
		        <li><a href="#">Help</a></li>
		      </ul>
		      <form class="navbar-form navbar-right">
		        <input type="text" placeholder="Search..." class="form-control">
		      </form>
		    </div>
	  	</div>
		</nav>
	</body>
</html>