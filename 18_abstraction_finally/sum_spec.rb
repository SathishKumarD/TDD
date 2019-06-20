require_relative "sum"
require_relative "money"
require_relative "bank"
describe Sum do 
	context "#plus" do
		it "adds money to sum" do
			five_bucks = Money.dollar(5)
			ten_francs = Money.franc(10)
			bank = Bank.new
			bank.add_rate("CHF", "USD", 2)
			sum = Sum.new(five_bucks, ten_francs).plus(five_bucks)
			result = bank.reduce(sum, "USD")
			expect(result).to eq(Money.dollar(15))
		end
	end

	context "#times" do
		it "multiples" do 
			five_bucks = Money.dollar(5)
			ten_francs = Money.franc(10)
			bank = Bank.new
			bank.add_rate("CHF", "USD", 2)
			sum = Sum.new(five_bucks, ten_francs).times(2)
			result = bank.reduce(sum, "USD")
			expect(result).to eq(Money.dollar(20))
		end
	end
end