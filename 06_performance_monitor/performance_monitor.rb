def measure(n = 1)
	diff = []
	n.times do 
		start = Time.now
		yield 
		finish = Time.now
		diff.push(finish - start)
	end
	return average(diff)
end

def average(arr)
	total = 0
	arr.each do |x|
		total += x
	end
	return total/arr.length
end