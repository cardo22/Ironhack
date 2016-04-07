require 'sinatra'
require 'sinatra/reloader'
require "artii"

# get "/ascii/:word" do
# 	@input = params[:word]
# end

get "/ascii/:word/?:font?/?:secret?" do 
	@word = params[:word]
	@font = params[:font]
	@secret = params[:secret]

	@base_font = Artii::Base.new :font => "alligator"
	@new_font = Artii::Base.new :font => @font
	puts params
	if @font == nil
		@font = @base_font
	else
		@font = @new_font
	end

	@font_word = @font.asciify(@word)

	erb(:artii)
end






