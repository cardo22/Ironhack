require "ruby-dictionary"
dictionary = Dictionary.from_file('/usr/share/dict/words')
p dictionary.exists? "gone"
p dictionary.exists? "bdjhgjhbv"

class WordSteps
	attr_accessor :word1, :word2
	def initialize(word1, word2)
		@dictionary = Dictionary.new
		@fisrt_word = word1
		@second_word = word2
	end

	def word_exists(word)
		puts @dictionary.exists?
	end
	def compare_words
	for i in (0..@first_word.length - 1)
		@first_word[i] != @second_word[i]
		@first_word[i] = @second_word[i]
		puts @first_word
		word_exists(@first_word)
	end
end
word = WordSteps.new("Cat", "Dog")
word.compare_words