require "rails_helper"

RSpec.describe WorkoutsController, :type => :controller do 

    describe "GET index" do
        
        it "assigns @workouts" do
          workout = FactoryBot.create(:workout)
          get :index
          expect(assigns(:workouts)).to eq([workout])
        end
    
        it "renders the index template" do
            get :index
            expect(response).to render_template("index")
        end
    end
end