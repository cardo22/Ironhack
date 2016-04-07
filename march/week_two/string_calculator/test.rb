require_relative "lib/calculator.rb"

calculator =  StringCalculator.new

puts calculator.add("7,6") == 13
puts calculator.add("9,1") == 10

puts calculator.add("5") == 5
puts calculator.add("3") == 3

puts calculator.add("") == 0

puts calculator.add("5,5,2") == 12