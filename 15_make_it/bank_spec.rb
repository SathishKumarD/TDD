require_relative "bank"
require_relative "sum"
require_relative "money"

describe Bank do 
	context "#reduce" do
		it "reduces sum to a currency" do
			sum = Sum.new(Money.dollar(10), Money.dollar(5))
			bank = Bank.new
			result = bank.reduce(sum, "USD")
			expect(Money.dollar(15)).to eq(result)
		end

		it "reduces currency to a currency" do
			ten = Money.dollar(10)
			bank = Bank.new
			result = bank.reduce(ten, "USD")
			expect(result).to eq(ten)
		end
	end
end