require_relative "sum"
class Bank
	attr_accessor :rates

	def initialize
		@rates = {}
	end
	def reduce(source, to)
		source.reduce(self, to)
	end

	def add_rate(from, to, rate)
		rates[from + "_" + to] = rate
	end

	def rate(from, to)
		key = from + "_" + to
		if rates.key?(key)
			rates[key]
		else
			1
		end
	end
end