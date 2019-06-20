
class Money
	attr_accessor :amount, :currency
	def initialize(amount, currency)
		@amount = amount
		@currency = currency
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