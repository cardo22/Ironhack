var Car = function(model, noise){
	this.model = model;
	this.noise = noise;
	this.wheels = 4;

	var horsePower =  5000;
};

Car.prototype.makeNoise = function(){
	console.log(this.noise);
};

var hundaCivic = new Car("Civic", "Vroom!");

//hundaCivic.makeNoise


//countdown using setTimeout
function blastOff(seconds){
	function countdown(){
		console.log(seconds);
		seconds -= 1;
		if(seconds >= 0){
			setTimeout(countdown, 1000)
		}else{
			console.log('Blast off!!')
		}
	}
	countdown();
}

blastOff(10);
















