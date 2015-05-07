require 'rails_helper.rb'

RSpec.describe Task do
	it "can distinguish a completed Task" do
		task = Task.new
		expect(task).not_to be_complete
		task.mark_completed
		expect(task).to be_complete
	end
end
