require_relative "money"

describe Money do 
	context "#equal" do
		it "a dollar is NOT equal to a Franc" do
			expect(Money.dollar(5)).to eq(Money.dollar(5))
			expect(Money.dollar(5)).to_not eq(Money.franc(5))
			expect(Money.franc(5)).to eq(Money.franc(5))
			expect(Money.new(5, "CHF")).to eq(Money.franc(5))
		end
	end

	context "#currency" do
		it "gives the right currency symbol" do 
			expect(Money.dollar(5).currency).to eq("USD")
			expect(Money.franc(5).currency).to eq("CHF")
		end
	end

	context "#times" do
		it "multiplies the amount" do
			five = Money.dollar(5)
			expect(five.times(2)).to eq(Money.dollar(10))
			expect(five.times(3)).to eq(Money.dollar(15))
		end
	end
end