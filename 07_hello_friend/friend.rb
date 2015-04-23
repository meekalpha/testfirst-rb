class Friend

	def greeting(who = nil)
		if who then
			return "Hello, #{who}!"
		else
			return "Hello!"
		end
	end
end