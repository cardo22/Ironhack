$(document).on('ready', function(){

// $('.green-pepper').hide();
// $('.mushroom').hide();
// $('.cheese').hide();
// $('.sauce-white').hide();

$('.btn-pepperonni').on('click', function(){
	var basePrice = 10;
	$('.pep').toggle();
	$('.btn-pepperonni').toggleClass('active');
	updatePrice();
})

$('.btn-green-peppers').on('click', function(){
	$('.green-pepper').toggle();
	$('.btn-green-peppers').toggleClass('active');
	updatePrice();
})

$('.btn-mushrooms').on('click', function(){
	$('.mushroom').toggle();
	$('.btn-mushrooms').toggleClass('active');
	updatePrice();
})

$('.btn-sauce').on('click', function(){
	$('.sauce-white').toggle();
	$('.btn-sauce').toggleClass('active');
	updatePrice();
})
// $('.btn-sauce').on('click', function(){
// 	$('.sause').toggleClass('sauce-white')
// })
$('.sauce-white').hide();
// $('.crust-gluten-free').hide();

$('.btn-crust').on('click', function(){
	$('.crust').toggleClass('crust-gluten-free');
	$('.btn-crust').toggleClass('active');
	updatePrice();
})


});

function updatePrice(){
	var priceSoFar = 10;

	if ($(".btn-pepperonni").hasClass("active")) {
		priceSoFar += 1;
	}

  	if ($(".btn-mushrooms").hasClass("active")) {
  		priceSoFar += 1;
  	}

  	if ($(".btn-green-peppers").hasClass("active")) {
    	priceSoFar += 1;
  	}

  	if ($(".btn-sauce").hasClass("active")) {
    	priceSoFar += 3;
  	}

  	if ($(".btn-crust").hasClass("active")) {
    	priceSoFar += 5;
  	}

  	$(".js-total-price").text("$" + priceSoFar);

}


