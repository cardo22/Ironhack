require_relative("lib/authenticator.rb")
auth = Authenticator
puts "Username:"
username = gets.chomp

puts "Password:"
password = gets.chomp

correct_username = "nizar"
correct_password = "swordfish"


puts "-------"

#means puts "WRONG!" Get out of here!

puts "Welcome back, #{username}!"

puts "Please enter some text to count word"
text = gets.chomp

puts "--------"
password = current_password
