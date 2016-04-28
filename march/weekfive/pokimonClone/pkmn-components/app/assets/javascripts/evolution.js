PokemonApp.Evo = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);

}

PokemonApp.Evo.prototype.render = function () {
	console.log("Rendering pokemon: #" + this.id);

	var btnEvolution = $(".evo-btn").data("evo-uri");


	$.ajax({
		url: btnEvolution,
		success: function (data) {
			console.log("success!")
			console.log(data)
			$(".js-pkmn-img").empty();
			$(".js-pkmn-name").text(data.name);
			$(".js-pkmn-number").text(data.pkdx_id);
			$(".js-pkmn-height").text(data.height);
			$(".js-pkmn-weight").text(data.weight);

			$(".js-pokemon-modal").modal("show");
			

			// var dataURI =  (data.evolutions[0].resource_uri);


		},

		error: function (error) {
			console.log("failed!")
			console.log(error.responseJSON);
		}
	})
}

$(document).on("ready", function () {
	$(".evo-btn").on("click", function (event) {
		var _click = $(event.currentTarget);
		var evoUri = _click.data("evo-uri");


		var pokiEvo = new PokemonApp.Evo(evoUri);
		pokiEvo.render();
	})
})

