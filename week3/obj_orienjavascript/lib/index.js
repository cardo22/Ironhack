var Car = function(model, noise, numberofWheels) {
	this.model = model;
	this.noise = noise;
 	this.numberofWheels = 4;
 }

var noise = new Car('benz', 'vroom');

console.log(noise);
function countdown5 () {
	console.log(5);
}
setTimeout(countdown5, 80);

function countdown4 () {
	console.log(4);
}
setTimeout(countdown4, 90);

function countdown3 () {
	console.log(3);
}
setTimeout(countdown3, 100);

function countdown2 () {
	console.log(2);
}
setTimeout(countdown2, 200);

function countdown1 () {
	console.log(1);
}
setTimeout(countdown1, 300);

function rocket () {
	console.log('blast off!!');
}
setTimeout(rocket, 400);







