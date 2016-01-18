require_relative("../lib/lexi.rb")

RSpec.describe Lexiconomitron do 
  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
  end
end
    	it "reverse this array." do
    	@lexi = Lexiconomitron.new
    	expect(@lexi.reverse_array(["This", "is" ,"a", "boring","test"])).to eq(["sih", "se"])
  end
 #  describe "oompa_loompa" do
 #  it "returns words less than three letters." do
 #  	@lexi = Lexiconomitron.new
 #  	expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
 #  end
	# end
end
