class Api::V1::WorkoutsController < ApplicationController
  def index
    workouts = Workout.all
    return render json: Api::V1::WorkoutSerializer.new(workouts).serialized_json
  end
end
