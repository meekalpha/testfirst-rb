class Dictionary
	attr_accessor :entries, :keywords

	def initialize
		@entries ||= {}
		@keywords = []
	end

	def add(entry)
		if entry.is_a?(Hash) then
			@entries = @entries.merge(entry)
			@keywords << entry.keys[0]
		elsif entry.is_a?(String) then
			@entries[entry] = nil
			@keywords << entry
		end	
		@keywords.sort!
	end

	def include?(kw)
		return @keywords.include?(kw)
	end

	def find(kw)
		sr = {}									#sr = search result
		@keywords.each do |k|					#search
			if /#{kw}/.match(k)
				sr[k] = @entries[k]
			end
		end
		return sr
	end

	def printable
		s = []
		@keywords.each do |k|
			d = @entries[k]
			s << "[#{k}] \"#{d}\"" 
		end
		return s.join("\n")
	end

end

d = Dictionary.new
d.add('fish' => 'aquatic animal')
d.add('fiend' => 'wicked person')
d.add('great' => 'remarkable')
print d.printable