class Dollar
	attr_accessor :amount

	def initialize(amount)
		@amount = amount
	end

	def times(multiplier)
		Dollar.new(amount * multiplier)
	end

	def equal(dollar)
		amount == dollar.amount
	end

	def ==(o)
		amount == o.amount
	end

	def hash
		amount.hash
	end
end
