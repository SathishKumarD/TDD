class Bottle99
	
	def sing
		99.downto(0) do |bottle_count|
			verse = ''
			if bottle_count > 1
				verse = any_bottle_verse(bottle_count)
			elsif bottle_count == 1
				verse = one_bottle_verse
			else
				verse = zero_bottle_verse
			end
			puts verse
		end
	end

	def any_bottle_verse(bottle_count)
		verse = "#{bottle_count} bottles of beer on the wall, #{bottle_count} bottles of beer. "
		verse += "Take one down and pass it around, #{bottle_count - 1} bottles of beer on the wall."
	end

	def one_bottle_verse
		verse = "1 bottle of beer on the wall, 1 bottle of beer. "
		verse += "Take one down and pass it around, no more bottles of beer on the wall."
	end

	def zero_bottle_verse
		verse = "No more bottles of beer on the wall, no more bottles of beer. "
		verse += "Go to the store and buy some more, 99 bottles of beer on the wall."
	end
end

b = Bottle99.new
b.sing