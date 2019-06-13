class Money
	attr_accessor :amount

	def initialize(amount)
		@amount = amount
	end

	def times(multiplier)
		Money.new(amount * multiplier)
	end

	def equal(money)
		amount == money.amount
	end

	def ==(o)
		amount == o.amount
	end

	def hash
		amount.hash
	end
end
