require_relative "../lib/calculator.rb"

RSpec.describe "String calculator" do 
	it "reurns the sum for multiple numbers" do
		calculator = StringCalculator.new

		#same as puts calculator.add("1,2,3,4") == 10
		expect(calculator.add("1,2,3,4") ).to eq(10)
		#same as puts calculator.add("25,25,25") == 75
		expect(calculator.add("25,25,25") ).to eq(75)
		expect(calculator.add("5,5,2") ).to eq(12)
	end
	it "returns the sum for two String numbers" do
		calculator = StringCalculator.new
		expect(calculator.add("7,6") ).to eq(13)
		expect(calculator.add("9,1") ).to eq(10)
	end
	it "returns the sum of one string number" do 
		calculator = StringCalculator.new
		expect(calculator.add("5") ).to eq(5)
		expect(calculator.add("3") ).to eq(3)
	end
	it "returns the sum of empty string" do 
		calculator = StringCalculator.new
		expect(calculator.add("") ).to eq(0)
	end
end








