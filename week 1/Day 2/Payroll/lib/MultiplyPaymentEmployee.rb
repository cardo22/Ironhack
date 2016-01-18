class MultiPaymentEmployee < Employee 
	def initialize(name, email, yearly_salary, hourly_rate, hours_week)
		@yearly_salary = yearly_salary
		@hourly_rate = hourly_rate
		@hours_week = hours_week
		super(name, email)
	end
	def calculate_salary
		# "#{@yearly_salary} + #{hours_week} * #{hourly_rate}" 
if @hours_week > 40
	salary = @yearly_salary / 52    +    @hours_week * @hourly_rate 
else
	puts @yearly_salary
end
end
end