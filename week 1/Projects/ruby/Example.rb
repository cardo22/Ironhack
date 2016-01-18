# puts "Hello, world!"
# puts "Hello, world!"

# print "Hello, world!"
# p "Hi"
#print "hello"


# test1= "Hello"
# test2= "Ricardo"
# test3= test1 + " "+test2
# puts test3


# puts "Hello\nworld"

# name = "Rafael"
# puts "Hi #{name}"

# puts "What's your number?"
# first_number = gets.chomp.to_i
# puts "Give me another number"
# second_number = gets.chomp.to_i
# puts "#{first_number} x #{second_number} = #{first_number * second_number}" 

# puts "What is your source file?"
# source = gets.chomp
# content_source_1=IO.read(source)
# puts "What is your destination file?"
# destination=gets.chomp
# IO.write(destination,content_source_1)
# puts "what city you were born?"
# city= gets.chomp
# puts "Sunny #{city}."

# puts "What is your favorite animal?" #prints out question for user
# animal = gets.chomp #allows user to type answer
# if animal == "Dog" #if the user types Dog
# 	print "You like dogs. Woof!" #then print You like dogs. Woof!
# elsif animal == "Cat" #or if the user types cat
# 	print "You like cats. Meow!" # print You like cats. Meow!
# else
# 	print "You don't like cats or dogs? Ok." #if the user doesn't print cat or dog print You don't like cats or dogs? Ok.
# end
         #this is creating a loop.
# numbers = [1,2,3] #stating the variable, and the variables are numbers 1,2,3
# for element in numbers # this saying for all the elements in the variable "number[1,2,3]"
# 	puts "-> #{element}" #print them from smallest to largest(->) 1,2,3
# end
#string = ""
# while string.length < 10 # While the string's length is less than 10
# 	string = string + 'a,b' #the string counts up to 10 then turns into ab ba when its pass 10
# end

# puts "The final string is #{string}" #this prints out the result.
# numbers = ["One", 2, "three"] #this is creating an Array. Its just like stating a variable.

# numbers.each do |item| #this is saying go through the Array, name whatever is inside item, and exicute the code on the following line.
# 	puts "--> #{item}" #the code the line above will exicute, and this is the code used to list items.
# end
# my_hash = {}
# my_hash["AST"] = "Asturias"       NEEDS EXPLANATION
# my_hash["GAL"] = "Galicia"
# my_hash["CAT"] = "Catalunya"

# my_hash.cas do |key,value|
# 	puts "#{key} stands for #{value}"
# 	end 
                   #FIZZ BUZZ

# 1.upto(100) do |a| #counts from 1 to 100 and exicute the code on the second line which defines "a".
# 	if a % 5 == 0 and a % 3 == 0 #if "a" is divisable by both 5 and 3 with 0 remainder.
# 		puts "FizzBuzz" #print FizzBuzz if "a" is divisable by both 5 and 3 with 0 remainder.
# 	elsif a % 5 == 0 #is saying if "a" is divisable by only 5.
# 		puts "Buzz"#print Buzz if "a" is divisable by only 5.
# 	elsif a % 3 == 0 #or if "a" is divisable by only 3.
# 		puts "Fizz" #print Fizz is "a" is divisable by only 3.
# 	else 
# 		puts a #if not divisable by either just print a.
# 	end
# end
# 1.upto(100) do |a|
	
# 	if a==1 #if "a" is equal to 1
# 		puts "Bang" #print Bang
# 	elsif a.to_s.length>1 && a.to_s.chars.first(1).join.to_i==1# all numbers starting with 1.
# 		puts "BuzzBang"#print BuzzBang
# 	elsif a % 5 == 0 && a % 3 == 0# rest of this is just like the above code.
# 		puts "FizzBuzz"
# 	elsif a % 5 == 0
# 		puts "Buzz"
# 	elsif a % 3 == 0
# 		puts "Fizz"
#     else
#     	puts a
# 	end
# end

# 	def say_hello(code)
# 		puts "Hello! #{code}"
# 	end

# say_hello("Ricardo")
# say_hello("Karin")
     #OR

#puts "James" + "Bond" #prints out JamesBond
#  def add(a, b) #defines the terms
#  	puts a + b #tell the code add
# end

# add((5 * 5), (5+3))
# add((3 + 4) * 10, 8 - 4 / 2)
# def taste(food)#defining the variable's item. The variable is "taste", and the item is "food"
# 	if food == "bacon" #this is saying if the item(food) is equal to bacon
# 		puts "Yummy!!! BACON!!!"#print Yummy!!! BACON!!! if the item is equal to bacon
# 	elsif food == "spinach" #or if the item is equal to spinach/if the user types spinach
# 		puts "Gross!!! SPINACH!!!"#print out Gross!!! SPINACH
# 	else food != "bacon" || "spinach" #if the item food is not equal to bacon or spinach/if the user didn't print either
# 		puts "What is your favorite food?" #print What is your favorite food?
# 	end
# end
#      #what the user print

# taste "fish"
# taste "bacon" #one item does says bacon so it would print Yummy!! BACON!!

#   def square(number) #defines the variable with the item inside of it
#   puts number * number #print the result of the item inside the variable multiplied by each other
#   end

# puts(square(4)) #states that the item inside the variable is 4
# def multiply(a,b)
# 	a * b
# end

# multiply(4, 2)
# def multiply(a, b) #telling ruby to multiply a and b
# 	a * b #a multiply by b
# end

# puts multiply(4, 2) #print the result of multiplying the variable's item which is 4 and 2
       #THE RETURN FUNTION
# def add(a, b) #stating that the value/items inside/of the variable is a and b
# 	return a + a #saying return the answer to the values/item a + a
# 	return a + b #these won't print because after the first return no code will execute.
# 	return b + b #same here.
# end

#puts add(1, 3) #this gave the gave the values/items numbers 1 and 3(a and b)

# def add(a, b)
# 	calc1 = a + a
# 	calc2 = a + b
# 	calc3 = b + b
# 	return calc1, calc2, calc3 #this allows all the code to run because nothing is after the first return.
# 	#and is also saying return the results of the above code.
# end

#puts add(2, 4)

 # def square(num)
 # 	sqr_num = num * num
 # 	if sqr_num > 100
 # 		return "Number too big!!"
 # 	end
 # 	sqr_num
 # end
 # words = []
 # until (word = gets.chomp).empty? do
 # 	  words << word
 # 	 end
 # 	cat
 # 	bird
 # 	ape
 # 	dog

 # 	puts words.sort 

#  list = Object.new
# list = ["cat, ape, bird, dog"]
# word = STDIN.gets
# list.push(word)
# $/ = "END"
# puts list
  #CREATING ARRAYS
# 
# animals = ["Lions", "Tigers", "Bears"]
# puts animals

# numbers = ["One", 2, "Three"]
# puts numbers
# numbers = ["One", 2, "Three"]
# puts numbers[0] #means print the number in place value 0 which is One
# puts numbers[1] #means print the number in place value 1 which is 2
  #MODIFYING ARRAYS

# animals = ["Lions", "Tigers", "Bears"]

# animals << "Wolves" #this is to add an item to an array
# animals.push "Snakes" #another way to add an item to an array
# animals.delete_at 2 #a method to delete whatever item at a place value, which in this case the place value was set to number 2

# puts animals

#puts [3,1,5,2,4,6,9,7,8,10].sort #.sort sorts numbers from lowest to highest and strings in alphabetical order
 #puts ["a", "day!", "Have", "nice"].sort #needs practice

# puts String.try_convert("str")
                                     #NEEDS EXPLINATION
# animals = String.new("Aliens")
# puts animals.size 

# class Caesar
# 	def initialize(shift, alphabet = ('a'..'z').to_a.join)
# 		i = shift % alphabet.size 
# 		@decrypt = alphabet
# 		@encrypt = alphabet[i..-1] + alphabet[0...i]
# 	end

# 	def encrypt(string)
# 		string.tr(@decrypt, @encrypt)
# 	end

# 	def decrypt(string)
# 		string.tr(@encrypt, @decrypt)
# 	end
# end

# class Car
#   def honk
#     puts "Beeeeeeeeep!"
#   end
# end

# my_car = Car.new
# my_car.honk

# class Car
# end

# my_car = Car.new

# class Car #creates a class called Car
# 	def honk #defines the class/the action of the class(the car honks)
# 		puts "Beeeeeeeeep!" #when the can honks print Beeeeeeep!
# 	end
# end

# my_car = Car.new #NEEDS MORE EXPLANATION
# my_car.honk

# class Car
#   def honk
#     puts "Beeeeeeeeep!" NEEDS EXPLINATION
#   end
# end

# my_car = Car.new

# puts my_car.class
# puts "cosa".class
# puts 4.class

# class Car
#   def initialize(color)
#     @color = color
#   end

#   def honk
#     puts "Beeeeeeeeep!"    NEEDS EXPLINATION
#   end

#   def print_color
#     puts @color
#   end
# end

# my_car = Car.new "red"
# other_car = Car.new "grey"

# my_car.print_color
# other_car.print_color
       #THE SHAKE SHACK

# class Milkshake
# 	def initialize(flavor, price)
# 		@flavor = flavor
# 		@price = price
# 	end
# end

# milkshake = milkshake.new("Chocolate", 7)

# class Ingredient
# 	def initialize(name, price)
# 		@name = name
# 		@price = price
# 	end
# end

# banana = Ingredient.new("Banana", 2)

# class MilkShake
#   def initialize
#     @base_price = 3
#     @ingredients = [ ]        
#   end
# end

# class MilkShake
#   def initialize
#     @base_price = 3
#     @ingredients = [ ]        
#   end

#   def add_ingredient(ingredient)
#     @ingredients.push(ingredient)
#   end
# end

# nizars_milkshake = MilkShake.new
# banana = Ingredient.new(“Banana”, 2)
# chocolate_chips = Ingredient.new(“Chocolate Chips”, 1)
# nizars_milkshake.add_ingredient(banana)
# nizars_milkshake.add_ingredient(chocolate_chips)

# def price_of_milkshake
#   #Let's establish what our counter should be before we start adding ingredients into the mix
#   total_price_of_milkshake = @base_price
#   #Add each ingredients price to our total
#   @ingredients.each do |ingredient|
#     total_price_of_milkshake += ingredient.price
#   end
#   #return  our total price to whoever called for it
#    total_price_of_milkshake
# end

# class Ingredient
#   attr_reader :name, :price
#   def initialize(name, price)
#       @name = name
#       @price = price
#   end
# end

# puts nizars_milkshake.price_of_milkshake




























