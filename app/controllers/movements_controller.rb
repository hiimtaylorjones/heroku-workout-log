class MovementsController < ApplicationController

    def index
        @movement = Movement.all
    end

    def new
        @movement = Movement.new
    end

    def show
        @movement = Movement.find(params[:id])
    end

    def update
        @movement = Movement.find(params[:id])
        @movement.update(workout_params)
    end

    def destroy
        @movement = Movement.find(params[:id])
        @movement.destroy
    end

private 

    def movement_params
        params.require(:movement).permit(:name, :description, :amount, :weight, :notes)
    end

end
