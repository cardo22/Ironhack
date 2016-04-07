

# numbers = [ "One", 2, "Three" ]
# numbers.each do |item|
#   puts "--> #{item}"
# end

# count = [for i = 1, i <= 100, i = i + 1]
def create_passWord
	puts "Enter password"
	set_password = gets.chomp
	keep_file = IO.read(sourcefile1.txt)
	read_password = IO.write(keep_file, set_password)
end


def login(passWord)
  if passWord == create_passWord
    puts "Enter"
elsif passWord != create_passWord
	puts "Get out!"
  end
end
puts create_passWord
login(gets.chomp)
# login(gets.chomp)
