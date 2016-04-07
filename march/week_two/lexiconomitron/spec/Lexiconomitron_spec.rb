require_relative "../lib/Lexiconomitron.rb"

RSpec.describe "Lexiconomitron" do 
  let (:lexi) {Lexiconomitron.new}

    it "removes every letter t from the input" do
      expect(lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    it "returns the first and last two words of an array that has been reversed with no t in each word." do 
    	expect(lexi.shazam(["the", "big", "train"]) ).to eq(["eh", "niar"])
    end

    it "returns array of words which are less than three." do 
    	expect(lexi.newWord_arr(["if", "you", "wanna", "be", "my", "lover"]) ).to eq(["if", "you", "be", "my"])
    end
end