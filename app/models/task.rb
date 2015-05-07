class Task
	attr_accessor :complete

	def initialize
		@complete = false
	end

	def complete?
		complete
	end
	def mark_completed
		@complete = true
	end	
end
