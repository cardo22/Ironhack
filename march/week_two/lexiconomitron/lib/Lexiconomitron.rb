class Lexiconomitron
	def eat_t(str)
		str.gsub(/[tT]/, '')
	end

	def shazam(arr_str)
		rev_str = arr_str.map do |item|
			item.reverse!
			eat_t(item)
		end
		[rev_str.first, rev_str.last]
	end

	def newWord_arr(new_words)
		arr = new_words.delete_if {|x| x.length > 3 }
		arr.map {|item| eat_t(item)}
	end
end