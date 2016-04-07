require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")

auth = Authenticator.new("nizar", "swordfish")

puts "Username:"
username = gets.chomp

puts "Password:"
password = gets.chomp

puts "\n-----\n"

if auth.valid_credentials?(username, password)
  puts "Welcome back, #{username}!"

  puts "Please enter some text to count words:"
  text = gets.chomp

  puts "\n-----\n"

  counter = WordCounter.new(text)

  puts "The entered text has _#{counter.word_count}_ words."
else
  puts "WRONG! Get out of here!"
end