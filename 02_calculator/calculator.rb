def add(x, y)
	return x + y
end

def subtract(x, y)
	return x - y
end

def sum(arr)
	sum = 0
	if arr == []
		return sum
	else
		arr.each do |x|
			sum += x
		end
	end
	return sum
end

def multiply(*nums)
	result = 1
	if nums == []
		return 0
	else
		nums.each do |x|
			result *= x
		end
	end
	return result
end

def power(x, y)
	return x ** y
end

def factorial(x)
	result = 1
	if x == 0
		return result
	else
		(1..x).each do |i|
			result *= i
		end
	end
	return result
end