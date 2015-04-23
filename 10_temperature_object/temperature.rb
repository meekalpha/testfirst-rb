def ftoc(n) return (n - 32.0) * 5.0 / 9.0 end
def ctof(n) return (n * 9.0 / 5.0) + 32.0 end

class Temperature
	attr_accessor :in_celsius, :in_fahrenheit

	def initialize(options)
		if options[:f] then
			@in_fahrenheit = options[:f]
			@in_celsius = ftoc(options[:f])
		end
		if options[:c]
			@in_celsius = options[:c]
			@in_fahrenheit = ctof(options[:c])	
		end
	end

	def self.from_celsius(n)
		new(:c => n)
	end

	def self.from_fahrenheit(n)
		new(:f => n)
	end
end

class Celsius < Temperature
    def initialize(c)
        super(:c => c)
    end
end

class Fahrenheit < Temperature
    def initialize(f)
        super(:f => f)
    end
end