$(document).on('ready', function(){
	$('.submit-search').on('click', function(submit){
		submit.preventDefault();
		var theSearch = $('.artist-search').val()

		$.ajax({
			url: `https://api.spotify.com/v1/search?type=artist&query=${theSearch}`,
			data: theSearch,
			success: function(theArtists){
				results = (theArtists.artists.items);
				console.log(theArtists.artists.items);
				addArtistsToDom(results)


			},

			error: function(){
				console.log("fail!")
				console.log(error)
			}
		})

	})

	function addArtistsToDom(results){
		results.forEach(function(oneArtist){
			console.log("success!");
			var html = `
			<li>
				<form>
					<button class="name-btn" data-artist-id=${oneArtist.id}>
						Name: ${oneArtist.name}
					</button>
				</form>
				<br>
				<p>Picture: <img src=${oneArtist.images[0].url}></p>
			</li>
			`
			$('.artist-info').append(html);
			$('.name-btn').on('click', function(search){
				var artistName = event.currentTarget;
				var artistID = $(artistName).data('artist-id');
				search.preventDefault();
				$.ajax({
					url: `https://api.spotify.com/v1/artists/${artistID}/albums`,

					success: function(theAlbums){
						albumResults = (theAlbums.items);
						console.log('success')
						console.log(theAlbums);
						albumResults.forEach(function(oneAlbum){
							console.log("success!");
							var otherHTML = `
							<li>
								Album: <p>${oneAlbum.name}</p>
								<br>
								<p>
								Cover: <img src=${oneAlbum.images[0].url}>
								</p>
							</li>
							`
							// $('.artist-info').empty();
							$('.modal-body').append(otherHTML);
						})

					},

					error: function(){
						console.log("fail!")
						console.log(error)
					}
				})

			})
		});
	}
});













