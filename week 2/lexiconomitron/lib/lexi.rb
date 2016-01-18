class Lexiconomitron
	
		
	def eat_t(string)
		string.gsub(/[tT]/,"")
		# string.delete("t")
	end
	def reverse_array(array)
	  array.map! do |word|
	   	    word.reverse!
	   	    eat_t(word)
		end
		new_array=[array[0],array[-1]]
	end
	def oompa_loompa(array)
		new_array = []
		array.each do |word|
			if word.length <= 3
				new_array << eat_t(word)
			end
		end
			new_array
	end
end	