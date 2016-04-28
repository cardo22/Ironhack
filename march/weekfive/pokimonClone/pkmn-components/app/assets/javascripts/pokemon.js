// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.prototype.render = function () {
	console.log("Rendering pokemon: #" + this.id);

	$.ajax({
		url: "/api/pokemon/" + this.id,
		success: function (response) {
			console.log("Pokemon info:");
			console.log(response);
			self.info = response;
			var img = (response.sprites[0].resource_uri)
			findSprites(img)

			var dscrpt = (response.descriptions[0].resource_uri)
			findDescription(dscrpt)

			$(".js-pkmn-name").text(self.info.name);
			$(".js-pkmn-number").text(self.info.pkdx_id);
			$(".js-pkmn-height").text(self.info.height);
			$(".js-pkmn-weight").text(self.info.weight);

			$(".js-pokemon-modal").modal("show");
			$(".js-pkmn-img").empty();

			$(".evo-btn").data("evo-uri", response.evolutions[0].resource_uri);
		},

		error: function (error) {
			console.log("failed!");
			console.log(error.responseJSON);
		}
	})
};


function findDescription (dscrpt) {
	$.ajax({
		url: dscrpt,

		success: function (data) {
			console.log("success");
			console.log(data);

			var description = data.description

			$(".js-pkmn-desc").text(description)
		},

		error: function (error) {
			console.log("fail ;(");
			console.log(error.responseJSON);
		}
	})
}


function findSprites (img) {
	$.ajax({
		url: img,
		success: function (data) {
			console.log('success!');
			console.log(data);

			var theImage = `<img src=http://pokeapi.co/${data.image}>`

			$(".js-pkmn-img").append(theImage)


		},

		error: function (error) {
			console.log('failed ;(');
			console.log(error.responseJSON);
		}
	})
}





PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
}

$(document).on('ready', function() {

	$('.js-show-pokemon').on("click", function(event) {
		var _button = $(event.currentTarget);
		var pokemonUri = _button.data("pokemon-uri");

		var pokemon =  new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	})
})












