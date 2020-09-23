class Api::V1::WorkoutsController < ApplicationController
  def index
    workouts = Workout.all
    return render json: Api::V1::WorkoutSerializer.new(workouts).serialized_json
  end

  def show
    workout = Workout.find(params[:id])
    return render json: Api::V1::WorkoutSerializer.new(workout).serialized_json
  end

  def update
    workout = Workout.find(params[:id])
    workout.update(workout_attributes)
    return render json: Api::V1::WorkoutSerializer.new(workout).serialized_json
  end

private 

  def workout_attributes
    data = JSON.parse(request.raw_post)
    params["data"] = data["data"]
    params.require(:data)
          .require(:attributes)
          .permit(:title, :classification, :condition, :notes)
  end
end
