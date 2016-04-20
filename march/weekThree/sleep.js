function sleep(seconds){
	function sleepFor(){
		// console.log('before sleep')
		//console.log(seconds);
		seconds -= 1;
		if (seconds >= 0){
			setTimeout(sleepFor, 1000)
		} else {
			console.log('after sleep')
		}
	}
	sleepFor();
}
console.log('before sleep')
sleep(5);