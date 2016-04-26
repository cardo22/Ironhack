$(document).on('ready', function(){
	$('.char-display').on('click', function(){
		$.ajax({
			url:  "https://ironhack-characters.herokuapp.com/characters",
			
			success: function (theData) {
				theData.forEach(function(oneData){
					console.log('Success!')
					var html = `
					<li>
						<p>Id: ${oneData.id}</p>
						<br>
						<p>Name: ${oneData.name}</p>
						<br>
						<p>Occupation: ${oneData.occupation}</p>
						<br>
						<p>Weapon: ${oneData.weapon}</p>
					</li>
					`
					$('.char-list').append(html);
				})
			},

			error: function(theError){
				console.log(theError.responseJSON);
			}
		})
	});

	$('.submit-char').on('click', function(submit){
		submit.preventDefault();
		var newCharacter = {
			Name: $("#name-input").val(),
			Occupation: $("#occupation-input").val(),
			Weapon: $("#weapon-input").val(),
			Dept: $("#dept-input").val()
		};
		$.ajax({

			type: "post",

			url: "https://ironhack-characters.herokuapp.com/characters",
		
			data: newCharacter,

			success: function(){
				alert(`${newCharacter.name}, was added.`)
			},

			error: function(error){
				console.log(error.responseJSON);
			}
		})
	});
});






