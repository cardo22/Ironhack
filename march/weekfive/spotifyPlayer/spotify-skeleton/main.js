$(document).on("ready", function () {
	$(".search-btn").on('click', function () {
		var trackSearch = $('.spotify-search').val();
		$('.btn-play').removeClass('disabled')

		$.ajax({
			url: `https://api.spotify.com/v1/search?type=track&query=/${trackSearch}`,

			success: function(search){
				console.log('success!');
				console.log(search);

				// var coverImg = (search.tracks.items[0])
				// var artistName = (search.tracks.items[0])
				var results = (search.tracks.items[0])
				newSearchResults(results);

			},

			error: function(error){
				console.log("failed ;(");
				console.log(error.responseJSON);
			}
		})
	})


	function newSearchResults(results){
			console.log("successfully found track!");
			var title = `${results.name}`
			var artistName = `${results.artists[0].name}`
			var coverImg = `<img src=${results.album.images[0].url}>`
			var songPreview = `${results.preview_url}`
			$('.title').text(title)
			$('.author').text(artistName)
			$('.cover').html(coverImg)
			$('audio').prop('src', songPreview)
			$('.btn-play').toggleClass('playing')
			$(".js-player").trigger('play')
	}

	$('.btn-play').on('click', function(){
		console.log("working?")
		
		if ($('.btn-play').hasClass('playing')){
			$('.btn-play').removeClass('playing')
			// $('.btn-play').toggleClass('disabled')
			$(".js-player").trigger('pause');
		}
		else {
			console.log("else check.")
			$('.btn-play').addClass('playing');
			$(".js-player").trigger('play');
		}
		
	});
});









