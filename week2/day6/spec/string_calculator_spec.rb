require_relative("../lib/calculator.rb")

RSpec.describe StringCalculator do
	it "returns 0 for empty string" do 
		my_calc = StringCalculator.new
		expect(my_calc.add ("")).to eq(0)
	end
		it "Returns 9" do
		my_calc = StringCalculator.new
		expect(my_calc.add ("9")).to eq(9)
	end
end

