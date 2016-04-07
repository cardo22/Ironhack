class StringCalculator
	def add(numStr)
		first = numStr[0].to_i
		second = numStr[2].to_i
		# third = numStr[3]
		first + second
		str_arr = numStr.split(",")
		puts str_arr.reduce(0) {|sum, num| sum + num.to_i}
		str_arr.reduce(0) {|sum, num| sum + num.to_i}
	end
end