class Movie
	# attr_reader :date
	# def initialize
	# 	@search_movie = Imdb::Search.new
	# 	@movie_arr = @search_movie.movies
	# 	@
	# end

	def search_movie(key_word)
		Imdb::Search.new(key_word)
	end

	def check_poster(movie_arr)
		arr = []
		movie_arr.each do |movie|
			if movie.poster != nil && arr.length <= 9
				arr.push(movie)
			end
		end
		arr
	end
end