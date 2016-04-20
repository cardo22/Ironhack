function decoder(word_list){
	var index = 0;
	var secretMessage = "";
	for (var i = 0; i < word_list.length; i++) {
		if (index === 5) {
			index = 0;
		}
		secretMessage += word_list[i].charAt(index);
		index++;
	}
	return secretMessage
}

words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];


message = decoder(words);
console.log(message);