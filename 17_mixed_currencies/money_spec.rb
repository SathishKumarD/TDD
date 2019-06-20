require_relative "money"
require_relative "bank"

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

	context "#plus" do
		it "adds and returns value in correct currency" do
			five = Money.dollar(5);
			sum = five.plus(five);
			bank = Bank.new
			reduced= bank.reduce(sum, "USD"); 
			expect(Money.dollar(10)).to eq(reduced)
		end
	end

	context "#reduce" do
		it "returns itself" do
			five = Money.dollar(5);
			#expect(five.reduce("")).to eq(five)
		end
	end

	context "mixed addition" do
		it "works" do
			five_bucks = Money.dollar(5)
			ten_francs = Money.franc(10)
			bank = Bank.new
			bank.add_rate("CHF", "USD", 2)
			result = bank.reduce(five_bucks.plus(ten_francs), "USD")
			expect(result).to eq(Money.dollar(10))
		end
	end
end