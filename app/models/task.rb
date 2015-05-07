class Task
	attr_accessor :completed

	def initialize
		@completed = false
	end

	def complete?
		completed
	end
	def mark_completed
		@completed = true
	end	
end
