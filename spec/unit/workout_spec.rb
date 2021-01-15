require "rails_helper"

RSpec.describe Workout, :type => :model do 

    it "is valid" do 
        workout = FactoryBot.build(:workout)
        workout.save
        expect(workout.valid?).to eq(true)
    end

    # it "can have associated movements" do 
    #     workout = FactoryBot.create(:workout)
    #     movement = FactoryBot.create(:movement, workout: workout)
    #     expect(workout.movements.length).to eq(1)
    # end

end