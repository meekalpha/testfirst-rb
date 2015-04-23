require "time"

def avg(ar)
	sum = 0
	ar.each {|x| sum += x}
	return sum / ar.length
end

def measure(n=1)
	t = []
	n.times do
		start = Time.now
		yield
		finish = Time.now
		t << finish - start
	end
	
	return avg(t) 
end