var Vikings = function(name, health, strength){
	this.name = name
	this.health = health
	this.strength = strength
};

// var Fight = function(){

// };

Vikings.prototype.time_toFight = function (viking){
	function hit(){
		viking.strength -= 1;
		if (viking.strength >= 2){
			true 
			setTimeout(hit, 1000)
		} else {
			console.log( viking.name + " " + "strength: " + viking.strength)
		}
	}
	hit();
};

var Pit = function(vik1, vik2){
		while (vik2.time_toFight() && vik1.time_toFight()){
			if (vik1.strength <= 10){
				vik1.health += "bad"
			}
			elsif (vik2.strength <= 10){
				vik2.health += "bad"
			};
		};
	};



var clash = Vikings.prototype.clash = function(){
	return time_toFight();
}

var viking1 = new Vikings("Mike", "good", 20);
var viking2 = new Vikings("Brynhild", "good", 20);
var viking3 = new Vikings("Gunnvor", "good", 20);
var viking4 = new Vikings("Torhild", "good", 20);

console.log("Fighting.....")
clash.time_toFight(pit(viking1, viking2));
//viking2.time_toFight(viking2);
// time_toFight(viking3);
// time_toFight(viking4);

