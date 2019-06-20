
class Money
	attr_accessor :amount, :currency
	def initialize(amount, currency)
		@amount = amount
		@currency = currency
	end

	def self.dollar(amount)
		Money.new(amount, "USD")
	end

	def self.franc(amount)
		Money.new(amount, "CHF")
	end

	def times(multiplier)
		Money.new(amount * multiplier, currency)
	end

	def equal(money)
		amount == money.amount
	end

	def ==(o)
		amount == o.amount && o.currency == self.currency
	end

	def hash
		amount.hash + self.currency.hash
	end
end