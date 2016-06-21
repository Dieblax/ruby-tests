class Temperature
	def initialize(options = {})
		if options[:f]
			@fahrenheit = options[:f].to_f
			@celsius = (@fahrenheit.to_f - 32.0) * 5.0/9.0
		else
			@celsius = options[:c].to_f
			@fahrenheit = @celsius.to_f * 1.8 + 32
		end
	end

	def self.from_celsius(c)
		Temperature.new({c: c})
	end

	def self.from_fahrenheit(f)
		Temperature.new({f: f})
	end

	def in_fahrenheit
		return @fahrenheit
	end

	def in_celsius
		return @celsius
	end


end

class Celsius < Temperature
	def initialize(c)
		@celsius = c.to_f
		@fahrenheit = @celsius * 1.8 +32
	end
end

class Fahrenheit < Temperature
	def initialize(f)
		@fahrenheit = f.to_f
		@celsius = (@fahrenheit - 32.0) * 5.0/9.0
	end
end