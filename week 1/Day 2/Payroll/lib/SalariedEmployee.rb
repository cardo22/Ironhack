class SalariedEmployee < Employee 
	def initialize(name, email, yearly_salary)
		super(name, email)
		@yearly_salary = yearly_salary
	end
	def calculate_salary
		@yearly_salary / 52
	end
end