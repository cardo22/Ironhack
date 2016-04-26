$(document).on('ready', function(){
	$('.submit-search').on('click', function(submit){
		submit.preventDefault();
		var theSearch = $('.artist-search').val()

		$.ajax({
			url: `https://api.spotify.com/v1/search?type=artist&query=${theSearch}`,
			data: theSearch,
			success: function(theArtists){
				results = (theArtists.artists.items);
				results.forEach(function(oneArtist){
					console.log("success!");
					var html = `
					<li>
						<p>Name: ${oneArtist.name}</p>
						<br>
						<p>Picture: <img src=${oneArtist.images[0].url}></p>
					</li>
					`
					$('.artist-info').append(html);
				});

			},

			error: function(){
				console.log("fail!")
				console.log(error)
			}
		})
	})
});