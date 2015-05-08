class Project
	attr_accessor :tasks

	def initialize
		@tasks = []
	end

	def incomplete_tasks 
		tasks.reject(&:completed)
	end

	def done?
		incomplete_tasks.empty?
	end

	def total_size
		tasks.sum(&:size)
	end

	def remaining_size
		incomplete_tasks.sum(&:size)
	end
end
