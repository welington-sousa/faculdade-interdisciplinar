var banners = ["resources/img/destaque-home.png", "resources/img/destaque-home-2.png"];
var bannerAtual = 0;

function trocaBanner() {
	bannerAtual = (bannerAtual + 1) % 2;
	document.querySelector('.home-destaque img').src = banners[bannerAtual];
}

setInterval(trocaBanner, 4000);

function validaBusca() {
	if (document.querySelector('#busca').value == '') {
		alert("ok");
		return false;
	}
};

