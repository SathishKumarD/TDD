require_relative "bank"
require_relative "sum"
require_relative "money"

describe Bank do 
	context "#reduce" do
		let (:bank) { Bank.new }

		it "reduces sum to a currency" do
			sum = Sum.new(Money.dollar(10), Money.dollar(5))
			result = bank.reduce(sum, "USD")
			expect(Money.dollar(15)).to eq(result)
		end

		it "reduces currency to a currency" do
			ten = Money.dollar(10)
			result = bank.reduce(ten, "USD")
			expect(result).to eq(ten)
		end

		it "reduces different currencies" do
			bank.add_rate("CHF", "USD", 2)

			result = bank.reduce(Money.franc(100), "USD")
			expect(Money.dollar(50)).to eq(result)
		end
	end
end