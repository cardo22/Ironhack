class AsciisController < ApplicationController
	def new
		render 'ascii_new'
	end

	def create
		word = params[:asciis][:user_input]
		font_input = params[:font]
		font = Artii::Base.new :font => font_input

		@artii_word = font_input.asciify(word)
		render 'art_page'
	end
end
