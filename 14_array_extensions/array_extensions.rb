class Array
	def sum
		if self.empty?
			return 0
		else
			@sum = 0
			self.each do |x| 
				@sum += x.to_i
			end
			return @sum
		end
	end
	def square
		if self.empty?
			return self
		else
			@square = []
			self.each do |x|
				@square << x * x
			end
			return @square
		end
	end
	def square!
		if self.empty?
			return self
		else
			self.map! do |x|
				x *= x
			end
		end
	end

end