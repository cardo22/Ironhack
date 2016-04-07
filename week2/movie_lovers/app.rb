require_relative('lib/movie.rb') #this routes my app.rb/controller to the lib forlder which contains my movie.rb file.

require "sinatra" #this allows my app.rb/controller file to use the sinatra gem.
require "sinatra/reloader" if development? #sinatra/reloader means you don't have to re-run your server everytime you make a change in any of your code.
require "imdb" #this allows my code to use the imdb movie gem.

result_view = Movie.new() #this is a variable holding the Movie class

get "/imdb_test" do
	string = params[:search_movie] #how you get the user input
  search = Imdb::Search.new(string) # this variable holds the Imdb gem with its method to search for a list of movies when the user make an imput requesting the movie list data.

  @number_of_results = search.movies.length # this instant variable @numbers_of_results(which you would name it according to what its going to do for your webapp) holds the 'search' instance of the imdb movie gem with Search movie list method.
  # which everytime you have a list of things in ruby it is an array. Which explains the .length method, that goes through the array(in this case the list of movies)  
  @first_result = search.movies[1]
  erb(:imdb_test)
end

get "/home" do 
 erb(:home_page) 
end
post '/search_result' do 
	@movie_search = params[:search_movie]
	search = Imdb::Search.new(@movie_search)
    @first_nine_result = search.movies.first(9)
	erb(:movie_search_list)
end

