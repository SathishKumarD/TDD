
class Money
	attr_accessor :amount, :currency
	def initialize(amount, currency)
		@amount = amount
		@currency = currency
	end

	def equal(money)
		amount == money.amount
	end

	def ==(o)
		amount == o.amount && o.class == self.class
	end

	def hash
		amount.hash + self.class.hash
	end
end