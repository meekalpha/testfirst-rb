def vowel?(c)
	vowels = ['a','e','i','o','u']
	return vowels.include?(c)
end

def translate(s)
	e_words = s.split
	l_words = []
	e_words.each do |w|
		l_words << translate_word(w)
	end
	return l_words.join(' ')
end


def translate_word(s)
	while not vowel?(s[0]) do
		if s[0..1] == 'qu' then
			c = s[0..1]
			s = s[2..-1]
		else
			c = s[0]
			s = s[1..-1]
		end
		s += c
	end
	return s + "ay"
end
