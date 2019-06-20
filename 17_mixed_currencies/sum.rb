require_relative "money"
class Sum
	attr_accessor :augend, :addend

	def initialize(augend, addend)
		@augend = augend
		@addend = addend
	end

	def reduce(bank, to)
		puts "addend", addend,  addend.reduce(bank, to).amount
		amount = augend.reduce(bank, to).amount + addend.reduce(bank, to).amount
		Money.new(amount, to)
	end
end