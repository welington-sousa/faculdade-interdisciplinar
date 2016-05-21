<div class="container loja">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class=""></li>
			<li class="" data-target="#myCarousel" data-slide-to="1"></li>
			<li class="active" data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item">
				<a href="#"> 
					<img class="first-slide" src="resources/img/pitadas-pins-útil-percevejos.jpg" 
					alt="First slide" width="944.15" height="480">
				</a>
			</div>
			<div class="item">
				<a href="#">
					<img class="second-slide" src="resources/img/airship.jpg" 
					alt="Second slide" width="944.15" height="480">
				</a>
			</div>
			<div class="item active">
				<a href='${linkTo[CamisasController].computacao}'>
					<img class="third-slide" src="resources/img/musician.jpg" 
					alt="Third slide" width="944.15" height="480">
				</a>	
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
		<div class="col-md-6">
			<a href='${linkTo[CamisasController].musicas}' class="thumbnail"> 
				<img class="first-slide" width="284.717" height="213.533"
				src="resources/img/musician.jpg">
				<button type="submit" class="comprar btn-danger btn-block">
					<span class="glyphicon glyphicon-music"></span> Música
			  </button>
			</a>
		</div>
		<div class="col-md-6">
			<a href='${linkTo[CamisasController].computacao}' class="thumbnail"> 
				<img class="first-slide" width="284.717" height="213.533" 
				src="resources/img/pitadas-pins-útil-percevejos.jpg">
				<button type="submit" class="comprar btn-danger btn-block">
					<span class="glyphicon glyphicon-book"></span> Computação
			  </button>
			</a>
		</div>
	</div>
</div>