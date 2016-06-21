class Book
	attr_accessor :title
	def title
		arr = @title.split(" ")
		result = []
		arr.map! do |s|
			if should_cap?(s)
				s.capitalize!
				result.push(s)
			else
				s
				result.push(s)
			end
		end
		result[0].capitalize!
		@title = result.join(" ")
	end
end

def should_cap?(s)
	conjunctions = ["and", "for", "over", "the", "in", "of", "a", "an"]
	if conjunctions.include?(s.downcase)
		return false
	else 
		return true
	end
end
