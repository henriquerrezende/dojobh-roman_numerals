
class RomanNumber

	

	def initialize value
	    @romanCharsMap = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
		@value = value
	end
	
	def value
		@value
	end

	def haveValidCharacteres?
		chars = @value.split ''
		chars.each do |char|
			if @romanCharsMap[char] == nil
				return false			
			end
		end
		true		
	end
	
	def group
		groupedChars = []
		chars = @value.split ''
		groupedChars.push chars.shift
		chars.each do |char|
			if groupedChars.last.size == 1 and @romanCharsMap[groupedChars.last] < @romanCharsMap[char]
				groupedChars.push (groupedChars.pop + char)
			else 
				groupedChars << char
			end
		end
		groupedChars
	end
end