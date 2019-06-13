require_relative "franc"

describe Franc do 
	context "#times" do
		it "multiplies the amount" do
			five = Franc.new(5)
			expect(five.times(2)).to eq(Franc.new(10))
			expect(five.times(3)).to eq(Franc.new(15))
		end
	end

	context "#equal" do
		it "returns true if the franc amount are same" do
			five = Franc.new(5)
			expect(five.equal(Franc.new(5))).to be true
		end
	end
end