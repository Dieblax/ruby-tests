def translate(s)
	arr = s.split(" ")
	result = []
	arr.each do |str|
		if is_a_vowel?(str, 0)
			str += "ay"
			result.push(str)
		else
			if is_a_vowel?(str, 1)
				str[str.length] = str[0] + "ay"
				str[0] = ""
				result.push(str)
			elsif is_a_vowel?(str, 2)
				str[str.length] = str[0] + str[1] + "ay"
				str[0] = ""
				str[0] = ""
				result.push(str)
			else
				str[str.length] = str[0] + str[1] + str[2] + "ay"
				str[0] = ""
				str[0] = ""
				str[0] = ""
				result.push(str)
			end
		end
	end
	result = result.join(" ")
	return result
end

def is_a_vowel?(s, i)
	unless s[i].downcase == "u" && s[i - 1].downcase == "q"
		if s[i].downcase == "a" || s[i].downcase == "e" || s[i].downcase == "i" || s[i].downcase == "o" || s[i].downcase == "u"
			return true
		end
	end
	return false
end
