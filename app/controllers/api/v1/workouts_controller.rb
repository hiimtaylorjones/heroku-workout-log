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
    add_ember_data_to_params
    params.require(:data)
          .require(:attributes)
          .permit(:title, :classification, :condition, :notes)
  end

  def add_ember_data_to_params
    data = JSON.parse(request.raw_post)
    params["data"] = data["data"]
  end
end
