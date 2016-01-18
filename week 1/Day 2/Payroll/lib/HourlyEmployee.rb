class HourlyEmployee < Employee
	def initialize(name, email, hourly_rate, hours_worked)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
		super(name, email)
	end
	def calculate_salary
		@hourly_rate * @hours_worked
		# puts "#{hourly_rate} * #{hours_worked} #{name} #{email}"

	end
end
