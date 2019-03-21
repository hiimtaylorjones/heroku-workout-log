class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
    end

    def new
        @workout = Workout.new
        @conditions = [
            ["For Time", "For Time"], 
            ["Max Weight", "Max Weight"], 
            ["Max Reps", "Max Reps"]
        ]
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
        if @workout.destroy
            redirect_to workouts_path, notice: "Workout removed!"
        else
            redirect_to workout_path(@workout), notice: "We could not remove your workout"
        end
    end

private 

    def workout_params
        params.require(:workout).permit(:name, :condition, :time, :max_weight, :reps, :description, :notes)
    end

end
