class Book
	attr_accessor :title

	def title=(title)
  		@title = titleize(title)
	end
end

def titleize(s)
	little_words = ["a", "aboard", "about", "above", "absent", "across", "after", "against", "along", "alongside", "amid", "amidst", "among", "amongst", "an", "and", "around", "as", "as", "aslant", "astride", "at", "athwart", "atop", "barring", "before", "behind", "below", "beneath", "beside", "besides", "between", "beyond", "but", "by", "despite", "down", "during", "except", "failing", "following", "for", "for", "from", "in", "inside", "into", "like", "mid", "minus", "near", "next", "nor", "notwithstanding", "of", "off", "on", "onto", "opposite", "or", "out", "outside", "over", "past", "per", "plus", "regarding", "round", "save", "since", "so", "than", "the", "through", "throughout", "till", "times", "to", "toward", "towards", "under", "underneath", "unlike", "until", "up", "upon", "via", "vs.", "with", "within", "without", "worth", "yet"]

	words = s.split()
	words.each_with_index do |word, i|
		if i == 0 or not little_words.include?(word) or word == "i" then
			word.capitalize!
		end
	end
	return words.join(' ')
end