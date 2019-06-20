require_relative "money"
class Franc < Money
	def initialize(amount)
		@currency = "CHF"
		super(amount, currency)
	end
end