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
    workout.save
    return render json: Api::V1::WorkoutSerializer.new(workout).serialized_json
  end
end
