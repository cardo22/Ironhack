$(document).on("ready", function(){

$('.submit').on('click', function(submit){
	submit.preventDefault();
	var latitude = $('.set-latitude').val()
	var longitude = $('.set-longitude').val()
		$('.js-location').append(`<img src=http://maps.googleapis.com/maps/api/staticmap?size=1000x1000&zoom=15&center=${latitude},${longitude}>`) 
})

	if ("geolocation" in navigator) {
		console.log("Geolocation is availabe!");

		navigator.geolocation.getCurrentPosition( displayPosition, showPositionError );
	} else {
		alert("You don't have Geolocation. Time to upgrade your browser.")
	}

});

function displayPosition (data) {
	console.log("Got position!");
	console.log(data);
	$(".js-set-latitude").text(data.coords.latitude);
	$(".js-set-longitude").text(data.coords.longitude);
}

function showPositionError (error) {
	console.log("Fail to get position :( ");
 	console.log(error);
}