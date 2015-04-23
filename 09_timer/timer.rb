class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string 
		s_hrs = (@seconds / 3600).floor
		s_mins = ((@seconds / 60).floor % 60)
		s_secs = (@seconds % 60)

		s_time = "%02d" % s_hrs
		s_time += ":%02d" % s_mins
		s_time += ":%02d" % s_secs
		return s_time
	end
end