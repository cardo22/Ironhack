console.log("hello there!")
$(document).on('ready', function(){
	$('.fade-button').on('click', function(){
	$('.this-should-fade').fadeToggle(2000);
	$('.color').toggleClass('unicorn-mode');
	});
});
