class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		@minutes = (@seconds/60).floor
		@hours = (@minutes/60).floor
		@minutes %= 60
		@seconds %= 60
		"#{'%02d'% @hours}:#{'%02d'% @minutes}:#{'%02d'% @seconds}"
	end
end