require_relative "../lib/fizzBuzz.rb"

RSpec.describe "FizzBuzz Test" do 
	it "Should return FizzBuzz if not divisible by 3 or 5" do 
		check = FizzBuzz.new
		expect(check.fizzbuzz(7)).to eq(7)
	end
end