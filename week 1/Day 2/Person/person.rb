class Person
	attr_reader :name
	attr_writer :age
	def intialize(name, age)
		@name = name
		@age = age
	end
end 
Ricardo = Person.new("Ricardo", 22)
puts Ricardo.age