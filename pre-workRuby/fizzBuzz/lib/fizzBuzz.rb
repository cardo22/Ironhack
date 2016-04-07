class FizzBuzz
	attr_accessor :array
	def initialize
		@array = [*1..100]
	end
	def fizzbuzz(i) 
			if i % 15 == 0 
			"FizzBuzz"
		    elsif i % 5 == 0 
			"Buzz"
			elsif i % 3 == 0
			"Fizz"
			else
			i
			end
	end
end
# 1.upto 100 do |i|
#   string = ""

#   string += "Fizz" if i % 3 == 0
#   string += "Buzz" if i % 5 == 0

#   puts "#{i} = #{string}"

# end


