<div class="container loja">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class=""></li>
			<li class="" data-target="#myCarousel" data-slide-to="1"></li>
			<li class="active" data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item">
				<img class="first-slide" src="resources/img/destaque-home-2.png" 
				alt="First slide" width="944.15" height="480">
				<div class="container">
					<div class="carousel-caption">
						<p class="lead">
							<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
				    		${msg}
				    	</c:if>
						</p>

						<p>
							<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
								<a role="button" href='${linkTo[UsuariosController].novo}'
									class="btn btn-ms btn-danger"> 
									<span class="glyphicon glyphicon-hand-right"></span> Cadastre-se
								</a>
							</c:if>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="resources/img/destaque-home.png" 
				alt="Second slide" width="944.15" height="480">
				<div class="container">
					<div class="carousel-caption">
						<p class="lead">
							<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
					    		${msg}
					    	</c:if>
						</p>
						<p>
							<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
								<a role="button" href='${linkTo[UsuariosController].novo}'
									class="btn btn-ms btn-danger"> 
									<span class="glyphicon glyphicon-hand-right"></span> Cadastre-se
								</a>
							</c:if>
						</p>
					</div>
				</div>
			</div>
			<div class="item active">
				<img class="third-slide" src="resources/img/destaque-home.png" 
				alt="Third slide" width="944.15" height="480">
				<div class="container">
					<div class="carousel-caption">
						<p class="lead">
							<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
				    			${msg}
					    	</c:if>
						</p>

						<p>
							<c:if test="${empty usuarioLogado or not usuarioLogado.logado}">
								<a role="button" href='${linkTo[UsuariosController].novo}'
									class="btn btn-ms btn-danger"> 
									<span class="glyphicon glyphicon-hand-right"></span> Cadastre-se
								</a>
							</c:if>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			 <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			 <span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="row">
		<div class="col-sm-6 col-md-4">
			<a href='${linkTo[CamisasController].femininas}' class="thumbnail"> 
				<img src="resources/img/produtos/miniatura3.png" alt="Generic placeholder thumbnail">
				<button type="submit" class="comprar btn-danger btn-block">
					<span class="glyphicon glyphicon-music"></span> Música
			  </button>
			</a>
		</div>
		<div class="col-sm-6 col-md-4">
			<a href='${linkTo[CamisasController].masculinas}' class="thumbnail"> 
				<img src="resources/img/produtos/miniatura2.png" alt="Generic placeholder thumbnail">
				<button type="submit" class="comprar btn-danger btn-block">
					<span class="glyphicon glyphicon-film"></span> Cinema
			  </button>
			</a>
		</div>
		<div class="col-sm-6 col-md-4">
			<a href='${linkTo[CamisasController].criancas}' class="thumbnail"> 
				<img src="resources/img/produtos/miniatura6.png" alt="Generic placeholder thumbnail">
				<button type="submit" class="comprar btn-danger btn-block">
					<span class="glyphicon glyphicon-book"></span> Literatura
			  </button>
			</a>
		</div>
	</div>
</div>