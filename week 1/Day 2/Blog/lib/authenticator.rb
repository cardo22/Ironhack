# create command line tool. This will ask you for a user and a password.
#If correct it will ask to endter a text and the program will count 
#the numbe of words.
#passwords can be hardcoded into the source code.
​
# auhentication of pw and uername
# counting words
​
class User
	attr_accessor :correct_username, :correct_password
	
	def initialize 
		@correct_username = "Jeanella"
		@correct_password = "trees"
	 end	
	
	def authenticate
		user_input=""
		while user_input != @correct_username
			puts "Enter correct username"
		    user_input = gets.chomp
	    end
	   user_input = ""
	    while user_input != @correct_password
	    	puts "Enter correct password"
	    	user_input =  gets.chomp
	    end
	    puts "Welcome back #{@correct_username}"
	    # puts "Type word:"
	    # user_input=gets.chomp
	    # array_words=user_input.split(" ")
	    # puts array_words.inspect
	end
end
​
​
class WordCounter
  def initialize(text)
    @text = text
  end
​
  def word_count
    words = @text.split(",") # .split puts each element in a seperate array
    puts words.length
  end