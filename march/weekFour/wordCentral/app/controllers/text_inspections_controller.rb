class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]
		word_arr = @text.split(" ")
		@word_count = @text.split(" ").length

		dupHash = Hash.new(0)
		word_arr.each do |word|
			dupHash[word] += 1
		end

		@sorted_hash = dupHash.sort_by do |key, value|
			- value
		end

		@ten_dups = @sorted_hash.first(10)
		render 'results'
	end
end
