require_relative "money"
require_relative "dollar"
require_relative "franc"
require_relative "money_factory"

describe Money do 
	context "#equal" do
		it "a dollar is NOT equal to a Franc" do
			expect(MoneyFactory.dollar(5)).to eq(Dollar.new(5))
			expect(MoneyFactory.dollar(5)).to_not eq(Franc.new(5))
			expect(MoneyFactory.franc(5)).to eq(Franc.new(5))
		end
	end

	context "#currency" do
		it "gives the right currency symbol" do 
			expect(Dollar.new(5).currency).to eq("USD")
			expect(Franc.new(5).currency).to eq("CHF")
		end
	end
end