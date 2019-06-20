require_relative "dollar"

describe Dollar do 
	context "#times" do
		it "multiplies the amount" do
			five = Dollar.new(5)
			expect(five.times(2)).to eq(Dollar.new(10))
			expect(five.times(3)).to eq(Dollar.new(15))
		end
	end

	context "#equal" do
		it "returns true if the dollar amount are same" do
			five = Dollar.new(5)
			expect(five.equal(Dollar.new(5))).to be true
		end
	end
end