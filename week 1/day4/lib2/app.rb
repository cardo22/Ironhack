require 'ruby-dictionary'

class Wordsort
	attr_accessor :word1, :word2 
	def initialize(word1, word2)
		@dictionary = Dictionary.from_file('/usr/share/dict/words')
		@initial_word = word1
		@second_word = word2
	end


	def	word_exist(word) 
		 @dictionary.exists?(word)
	end

	def is_it_real
		word_exist(@initial_word) && word_exist(@second_word)
	end

	def compare_words


		for i in (0..@initial_word.length - 1)
			
			if @initial_word[i]!=@second_word[i] 
				character=@initial_word[i]
				@initial_word[i]=@second_word[i]
				puts @initial_word
				if !word_exist(@initial_word)
					@initial_word[i]=character
				end
				puts @initial_word
			end
		end
	 compare_words if @initial_word != @second_word	
	end
end

# caca =wordsort.new ("put", "gut")
# caca.word_exist

word =Wordsort.new("cat", "dog")
word1 =Wordsort.new("sad", "gaa")
if word.is_it_real
	word.compare_words
else
	puts "Select other words"
end