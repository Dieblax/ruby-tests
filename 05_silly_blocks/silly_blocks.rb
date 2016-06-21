def reverser
	str = yield
	s = str.split(" ")
	s.map! do |word|
		word.reverse!
	end
	str = s.join(" ")
	return str
end

def adder(x=1)
	num = yield
	return num + x
end

def repeater(n=1)
	n.times do
		yield
	end
end