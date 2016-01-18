require_relative("lib/chess.rb")

black_king = King.new(5, 8, "black")

white_king = King.new(5, 1, "white")

puts "\nTesting the King"
puts "Good moves"
p white_king.move?(6, 2)
p white_king.move?(5, 2)
p white_king.move?(4, 1)
puts "Bad moves"
p white_king.move?(7, 2)
p white_king.move?(1, 5)
p white_king.move?(1, 1)

puts "\n------------------\n"