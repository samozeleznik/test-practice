require 'rails_helper.rb'

RSpec.describe Task do
	it "can distinguish a completed Task" do
		task = Task.new
		expect(task).not_to be_complete
		task.mark_completed
		expect(task).to be_complete
	end
	
	descrive "velocity" do
		let(:task) { Task.new(size: 3) }
		
		it "does not count an incomplete task toward velocity" do
			expect(task).not_to be_part_of_velocity
			expect(task.points_toward_velocity).to eq(0)
		end

		it "does not count a long-ago task toward velocity" do
			expect(task).not_to be_part_of_velocity
			expect(task.points_toward_velocity).to eq(0)
		end
		
		it "counts a recent task toward velocity " do
			task.mark_complete(1.day.ago)
			expect(task).to be_part_of_velocity
			expect(task.points_toward_velocity).to eq(3)
		end
	end
end
