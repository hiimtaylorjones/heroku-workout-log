class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
    end

    def new
        @workout = Workout.new
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to workouts_path, notice: "Workout created!"
        else
            render :new, notice: "There was an error processing your request"
        end
    end

    def show
        @workout = Workout.find(params[:id])
    end

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
    end

private 

    def workout_params
        params.require(:workout).permit(:name, :condition, :time, :max_weight, :reps, :description, :notes)
    end

end
