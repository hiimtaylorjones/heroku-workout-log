require "rails_helper"

RSpec.describe Api::V1::WorkoutsController, :type => :controller do 

    describe "GET index" do
        
        it "exist" do
          workout = FactoryBot.create(:workout)
          get :index
        end
    end
end