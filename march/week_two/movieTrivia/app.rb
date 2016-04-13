require 'sinatra'

require 'sinatra/reloader' if development?

require 'imdb'

require_relative 'lib/movie.rb'

movie = Movie.new

get '/search_movie' do 
	erb(:movie_search)
end

post '/movie_list' do 
	movie_class = movie
	@key_word = params[:movie_search]
	the_search = movie_class.search_movie(@key_word)
	movie_list = the_search.movies.first(25)
	@results = movie_class.check_poster(movie_list)
    # @only_9_results.movies_withPoster
	erb(:movie_list)
end

