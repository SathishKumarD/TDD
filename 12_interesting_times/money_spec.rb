require_relative "money"
require_relative "dollar"
require_relative "franc"
require_relative "money_factory"

describe Money do 
	context "#equal" do
		it "a dollar is NOT equal to a Franc" do
			expect(Money.dollar(5)).to eq(Money.dollar(5))
			expect(Money.dollar(5)).to_not eq(Money.franc(5))
			expect(Money.franc(5)).to eq(Money.franc(5))
			expect(Money.new(5, "CHF")).to eq(Franc.new(5))
		end
	end

	context "#currency" do
		it "gives the right currency symbol" do 
			expect(Dollar.new(5).currency).to eq("USD")
			expect(Franc.new(5).currency).to eq("CHF")
		end
	end
end