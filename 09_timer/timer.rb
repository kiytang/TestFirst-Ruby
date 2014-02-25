class Timer
	#note attr_accessor is equivalent to:	
	# def seconds
	# 	@seconds
	# end

	# def seconds=(n)
	# 	@seconds = n
	# end
	
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		@timer = Time.at(@seconds).gmtime.strftime("%R:%S")
	end

	#Ternary operator has form condition ? if_true : if_false
	def padded(n)
		((n < 10) ? ("0" + n.to_s) : n.to_s)
	end
end
