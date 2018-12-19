require "rails_helper"

RSpec.describe Workout, :type => :model do 

    it "is valid" do 
        workout = FactoryBot.build(:workout)
        workout.save
        expect(workout.valid?).to eq(true)
    end

end