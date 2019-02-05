require "rails_helper"

RSpec.describe MovementsController, :type => :controller do 

    describe "GET index" do
        
        it "assigns @movements" do
          workout = FactoryBot.create(:workout)
          movement = FactoryBot.create(:movement, workout: workout)
          puts movement
          get :index
          expect(assigns(:movements)).to eq([movement])
        end
    
        it "renders the index template" do
            get :index
            expect(response).to render_template("index")
        end
    end
end