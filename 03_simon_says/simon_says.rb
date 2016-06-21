def echo(s)
	return s
end

def shout(s)
	return s.upcase
end

def repeat(s, times=2)
	return (s + " ") * (times-1) + s
end

def start_of_word(s, num)
	string = ""
	(0...num).each do |i|
		string += s[i]
	end
	return string
end

def first_word(s)
	str = s.split(" ")
	return str[0]
end

def titleize(s)
	str = s.split(" ")
	for i in 0...str.length
		if i > 0
	 		str[i].capitalize! unless str[i] == "and" || str[i] == "the" || str[i] == "over"
	 	else
	 		str[i].capitalize!
	 	end
	end
	return str.join(" ")
end
