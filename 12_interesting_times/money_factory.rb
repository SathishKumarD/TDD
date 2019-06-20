require_relative "franc"
require_relative "dollar"

class MoneyFactory
	def self.dollar(amount)
		Dollar.new(amount)
	end

	def self.franc(amount)
		Franc.new(amount)
	end
end
