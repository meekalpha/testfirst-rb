def add(a,b)
	return a + b
end

def subtract(a,b)
	return a - b
end

def sum(array)
	total = 0
	array.each {|x| total+= x}
	return total
end

def factorial(n)
	if n==1 or n == 0 then 
		return 1 
	end
	return factorial(n - 1) * n
end

def multiply(*args)
	product = 1
	args.each {|x| product *= x}
	return product
end

def pow(a,b)
	total = 1
	b.times {total *= a}
	return total
end