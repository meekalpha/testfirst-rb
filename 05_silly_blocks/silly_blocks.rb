def reverser
	words = yield.split
	words.each {|word| word.reverse!}
	return words.join(" ")
end

def adder(n=1)
	return yield + n
end

def repeater(n=1)
	n.times do
		yield
	end
end