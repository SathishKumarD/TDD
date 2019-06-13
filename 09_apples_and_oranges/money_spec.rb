require_relative "money"
require_relative "dollar"
require_relative "franc"

describe Money do 
	context "#equal" do
		it "a dollar is NOT equal to a Franc" do
			expect(Dollar.new(5)).to eq(Dollar.new(5))
			expect(Dollar.new(5)).to_not eq(Franc.new(5))
		end
	end
end