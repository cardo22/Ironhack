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

puts "What is your source file?"
source = gets.chomp
content_source_1=IO.read(source)
puts "What is your destination file?"
destination=gets.chomp
IO.write(destination,content_source_1)
