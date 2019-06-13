class Money
	attr_accessor :amount

	def initialize(amount)
		@amount = amount
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