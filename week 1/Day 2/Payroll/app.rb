require_relative("lib/employee.rb")
require_relative("lib/HourlyEmployee.rb")
require_relative("lib/MultiplyPaymentEmployee.rb")
require_relative("lib/SalariedEmployee.rb")

Josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
puts Josh.calculate_salary

Nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
puts Nizar.calculate_salary

Ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
puts Ted.calculate_salary

Emilio = HourlyEmployee.new('Emilio', 'emilio@gmail.com', 25, 40)
puts Emilio.calculate_salary

Ricardo = HourlyEmployee.new('Ricardo', 'ricardo@gmail.com', 25, 40)
puts Ricardo.calculate_salary
# employees = Hash.new{}

employees = [Josh, Nizar, Ted, Emilio, Ricardo]
employees.each do |employee| 
	puts "#{employee.name}==>#{employee.calculate_salary}"
	end
# payroll = Payroll.new(employees)
# payroll.pay_employees



