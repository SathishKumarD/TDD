require_relative "money"
class Franc < Money
	def initialize(amount)
		@currency = "CHF"
		super(amount, currency)
	end

	def times(multiplier)
		MoneyFactory.franc(amount * multiplier, currency)
	end
end