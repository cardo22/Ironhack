$(document).on("ready", function() {
	$('.js-add-ingredient').on('click',addIngredient)
})

function addIngredient (event) {
	var btn = event.currentTarget;
	var sandwichId = $(".js-sandwich-id").prop("id")
	var id = $(btn).data("id")
	console.log(sandwichId)
	
	$.ajax({
		type: "post",
		url: `/api/sandwiches/${sandwichId}/ingredients/add`,
		data: { ingredient_id: id },
		success: function(data) {
			console.log(data);
		},
		error: function(error) {
				console.log("Fail");
				console.log(error.responseJSON);
		}
	});
};