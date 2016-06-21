class Fixnum
	def in_words
		case self
		when 0 then return "zero"
		when 1 then return "one"
		when 2 then return "two"
		when 3 then return "three"
		when 4 then return "four"
		when 5 then return "five"
		when 6 then return "six"
		when 7 then return "seven"
		when 8 then return "eight"
		when 9 then return "nine"
		when 10 then return "ten"
		when 11 then return "eleven"
		when 12 then return "twelve"
		when 13 then return "thirteen" 
		when 14 then return 4.in_words + "teen"
		when 15 then return "fifteen"
		when 16 then return 6.in_words + "teen"
		when 17 then return 7.in_words + "teen"	
		when 18 then return 8.in_words + "een"
		when 19 then return 9.in_words + "teen"
		when 20 then return "twenty"
		when 21...30 then return "twenty" + " " + (self - 20).in_words
		when 30 then return "thirty"
		when 31...40 then return "thirty" + " " + (self - 30).in_words
		when 40 then return "forty"
		when 41...50 then return "forty" + " " + (self - 40).in_words
		when 50 then return "fifty"
		when 51...60 then return "fifty" + " " + (self - 50).in_words
		when 60 then return "sixty"
		when 61...70 then return "sixty" + " " + (self - 60).in_words
		when 70 then return "seventy"
		when 71...80 then return "seventy" + " " + (self - 70).in_words
		when 80 then return "eighty"
		when 81...90 then return "eighty" + " " + (self - 80).in_words
		when 90 then return "ninety"
		when 91...100 then return "ninety" + " " + (self - 90).in_words
		when 100...1_000
			if self%100 == 0
				return (self/100).in_words + " " + "hundred"
			else
				return (self/100).in_words + " " + "hundred" + " " + (self%100).in_words
			end
		when 1_000...1_000_000
			if self%1000 == 0
				return (self/1000).in_words + " " + "thousand"
			else
				return (self/1000).in_words + " " + "thousand" + " " + (self%1000).in_words
			end
		when 1_000_000...1_000_000_000
			if self%1_000_000 == 0
				return (self/1_000_000).in_words + " " + "million"
			else
				return (self/1_000_000).in_words + " " + "million" + " " + (self%1_000_000).in_words
			end
		when 1_000_000_000...1_000_000_000_000
			if self%1_000_000_000 == 0
				return (self/1_000_000_000).in_words + " " + "billion"
			else
				return (self/1_000_000_000).in_words + " " + "billion" + " " + (self%1_000_000_000).in_words
			end
		when 1_000_000_000_000...1_000_000_000_000_000
			if self%1_000_000_000_000 == 0
				return (self/1_000_000_000_000).in_words + " " + "trillion"
			else
				return (self/1_000_000_000_000).in_words + " " + "trillion" + " " + (self%1_000_000_000_000).in_words
			end
		else return self
		end
	end
end
