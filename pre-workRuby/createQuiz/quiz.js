var user = {}
var responses = []

function question1() {
	var name = prompt('What is your name?')
	user.name = name 
};
question1();

function question2(){
	var firstQuestion = prompt('Does 1 + 1 === 2? (yes or no)')
	if (firstQuestion.toLowerCase() === 'yes'){
		firstQuestion = true
	} else if (firstQuestion.toLowerCase() === 'no'){
			firstQuestion = false
		} else {
			alert('Please answer (Yes or No)')
			return question2();
		}
		responses.push(firstQuestion);
}
question2();

function question3(){
	var js = prompt('What is the original name for javascript: A. Java, B. Mocha, C. LiveScript, D. ScriptyScript ');
	js = js.toLowerCase();
	user.js = js
	var B = 'B'
	switch(js){
		case js:
		if (js = B){
			js = true;
		};
		case js:
		if (js != B){
			js = false;
		}
		default:
		js = B
		// alert('select an option please!');
	}
	responses.push(js);
}
question3();

function question4(){
	var forthQuestion = prompt('What is the capital of florida? (A. Miami, B. Orlando, C. Tallahassee, D. Gainsville)');
	forthQuestion = forthQuestion.toLowerCase();
	user.forthQuestion = forthQuestion
	var c = 'c'
	switch(forthQuestion){
		case forthQuestion:
		if (forthQuestion = c){
			forthQuestion = true;
		};
		case forthQuestion:
		if (forthQuestion != c){
			forthQuestion = false;
		}
		default:
		forthQuestion = c
	}
	responses.push(forthQuestion)
}
question4();

function question5(){
	var fifthQuestion = prompt('10 + 10 = 20? (Yes or No)')
	fifthQuestion = fifthQuestion.toLowerCase();
	user.fifthQuestion = fifthQuestion
	if (fifthQuestion === 'yes'){
		fifthQuestion = true
	} else if (fifthQuestion === 'no'){
			fifthQuestion = false
		} else {
			alert('Please answer (Yes or No)')
			return question5();
		}
		responses.push(fifthQuestion);
}
question5();

function evaluate(responsesArray){
	var checkAnswer = if (responsesArray.length === true){
		console.log('correct');
	} else{
		console.log('incorrect');
	}
	
	
}