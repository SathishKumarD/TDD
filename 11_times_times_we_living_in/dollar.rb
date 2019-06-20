require_relative "money"
class Dollar < Money
	def initialize(amount)
		super(amount, "USD")
	end

	def times(multiplier)
		MoneyFactory.franc(amount * multiplier, currency)
	end
end
