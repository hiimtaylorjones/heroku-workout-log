require "rails_helper"

RSpec.describe Movement, :type => :model do 

    it "is valid" do 
        workout = FactoryBot.create(:workout)
        movement = FactoryBot.build(:movement, workout: workout)
        movement.save
        expect(movement .valid?).to eq(true)
    end
end