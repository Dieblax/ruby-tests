class RPNCalculator
	attr_reader :value
	def initialize
		@stack = Array.new
		@value = 0
	end
	def push(n)
		@stack << n
		@value = @stack[@stack.length-1]
	end
	def plus
		raise "calculator is empty" if @stack.length < 1
		@value = @stack[@stack.length-2].to_f + @stack[@stack.length-1].to_f
		@stack.delete_at(@stack.length-1)
		@stack[@stack.length-1] = @value
	end
	def minus
		raise "calculator is empty" if @stack.length < 1
		@value = @stack[@stack.length-2].to_f - @stack[@stack.length-1].to_f
		@stack.delete_at(@stack.length-1)
		@stack[@stack.length-1] = @value
	end
	def divide
		raise "calculator is empty" if @stack.length < 1
		@value = @stack[@stack.length-2].to_f / @stack[@stack.length-1].to_f
		@stack.delete_at(@stack.length-1)
		@stack[@stack.length-1] = @value
	end
	def times
		raise "calculator is empty" if @stack.length < 1
		@value = @stack[@stack.length-2].to_f * @stack[@stack.length-1].to_f
		@stack.delete_at(@stack.length-1)
		@stack[@stack.length-1] = @value
	end
	def tokens(s)
		@token_arr = s.split(" ")
		@token_arr.map! do |w|
			unless is_num?(w)
				w = w.to_sym 
			else
				w = w.to_i
			end
		end
	end
	def evaluate(expression)
		t = tokens(expression)
		t.each do |v|
			if v.is_a? Fixnum
				@stack.push(v)
			else
				operator(v)
			end
		end
		return @value
	end

	private
	def is_num?(str)
  		!!Integer(str)
		rescue ArgumentError, TypeError
  		false
  	end
	end

	def operator(v)
		case v
		when :+ then plus()
		when :- then minus()
		when :/ then divide()
		when :* then times()
		else raise "Invalid operator"
	end
end
